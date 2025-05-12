#!/usr/bin/python3
with open("transcript_1994CB.txt", "w") as outfile:
    for fname in [
        "transcript_part1_1994CB.txt",
        "transcript_part2_1994CB.txt",
        "transcript_part3_1994CB.txt"
    ]:
        with open(fname) as infile:
            outfile.write(infile.read())
            outfile.write("\n")  # Add newline between parts for clarity

