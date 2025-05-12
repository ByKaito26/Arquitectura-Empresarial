import torch
import torchaudio
from pyannote.audio import Pipeline
from pyannote.core import Segment
import whisper
import os

# Load full audio
audio_path = "/content/2020JCB.mp3"
audio, sr = torchaudio.load(audio_path)

# Duration & split
num_samples = audio.shape[1]
half = num_samples // 2
second_half = audio[:, half:]
half_duration_sec = half / sr

# Save second half
torchaudio.save("second_half.wav", second_half, sr)

# Load diarization pipeline
pipeline = Pipeline.from_pretrained(
    "pyannote/speaker-diarization-3.1",
    use_auth_token="")
pipeline.to(torch.device("cuda"))

# Load Whisper model
model = whisper.load_model("large-v3")

# Function to process one half
def process_half(wav_file, output_txt, time_offset=0.0):
    diarization = pipeline(wav_file)
    audio_half, _ = torchaudio.load(wav_file)
    transcripts = []

    for segment, _, speaker in diarization.itertracks(yield_label=True):
        start_sample = int(segment.start * sr)
        end_sample = int(segment.end * sr)
        segment_audio = audio_half[:, start_sample:end_sample]

        filename = f"temp_{speaker}_{segment.start:.2f}-{segment.end:.2f}.wav"
        torchaudio.save(filename, segment_audio, sr)

        result = model.transcribe(filename, language="es")
        transcripts.append(f"[{speaker}] {result['text']}")

        os.remove(filename)

    with open(output_txt, "w") as f:
        for line in transcripts:
            f.write(line + "\n")

# Process only the second half
process_half("second_half.wav", "transcript_part2_2020JCB.txt", time_offset=half_duration_sec)

# Download result
from google.colab import files
files.download("transcript_part2_2020JCB.txt")
