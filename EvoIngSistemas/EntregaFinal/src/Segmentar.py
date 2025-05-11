import marimo

__generated_with = "0.13.6"
app = marimo.App(width="medium")


@app.cell
def _():
    from pyannote.audio import Pipeline
    return (Pipeline,)


@app.cell
def _(Pipeline, torch):
    HUGGINGFACE_TOKEN = ""

    pipeline = Pipeline.from_pretrained("pyannote/speaker-diarization-3.1", 
                                        use_auth_token=HUGGINGFACE_TOKEN)

    # (optional) send pipeline to GPU
    pipeline.to(torch.device("cuda"))

    # process audio file
    output = pipeline("audio.wav")
    return


if __name__ == "__main__":
    app.run()
