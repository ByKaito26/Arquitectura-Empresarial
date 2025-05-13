#!/usr/bin/python3
with open("transcript_2008YYNR.txt", "w") as outfile:
    for fname in [
        "transcript_part1_2008YYNR.txt",
        "transcript_part2_2008YYNR.txt",
        "transcript_part3_2008YYNR.txt"
    ]:
        with open(fname) as infile:
            outfile.write(infile.read())
            outfile.write("\n")  # Add newline between parts for clarity

