with open("transcript_2021MAEG.txt", "w") as outfile:
    for fname in [
        "transcript_part1_2021MAEG.txt",
        "transcript_part2_2021MAEG.txt",
        "transcript_part3_2021MAEG.txt"
    ]:
        with open(fname) as infile:
            outfile.write(infile.read() + "\n")

# Download final merged transcript
files.download("transcript_2021MAEG.txt")
