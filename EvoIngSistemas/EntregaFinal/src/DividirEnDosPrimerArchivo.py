import torch
import torchaudio
from pyannote.audio import Pipeline
from pyannote.core import Segment
import whisper
import os

# Load full audio
audio_path = "/content/1994CB.mp3"
audio, sr = torchaudio.load(audio_path)

# Duration & split into 3 parts
num_samples = audio.shape[1]
third = num_samples // 3

# Extract first third
part1 = audio[:, :third]
torchaudio.save("part1.wav", part1, sr)

# Load diarization pipeline
pipeline = Pipeline.from_pretrained(
    "pyannote/speaker-diarization-3.1",
    use_auth_token="")
pipeline.to(torch.device("cuda"))

# Load Whisper model
model = whisper.load_model("large-v3")

# Function to process a part
def process_part(wav_file, output_txt):
    diarization = pipeline(wav_file)
    audio_part, _ = torchaudio.load(wav_file)
    transcripts = []

    for segment, _, speaker in diarization.itertracks(yield_label=True):
        start_sample = int(segment.start * sr)
        end_sample = int(segment.end * sr)
        segment_audio = audio_part[:, start_sample:end_sample]

        filename = f"temp_{speaker}_{segment.start:.2f}-{segment.end:.2f}.wav"
        torchaudio.save(filename, segment_audio, sr)

        result = model.transcribe(filename, language="es")
        transcripts.append(f"[{speaker}] {result['text']}")

        os.remove(filename)

    with open(output_txt, "w") as f:
        for line in transcripts:
            f.write(line + "\n")


