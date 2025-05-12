#!/usr/bin/python3
# Merge transcript parts
merged_filename = "transcript_1992DTP.txt"

with open(merged_filename, "w") as outfile:
    for fname in ["transcript_part1_1992DTP.txt", "transcript_part2_1992DTP.txt"]:
        with open(fname, "r") as infile:
            outfile.write(infile.read())
            outfile.write("\n")  # Add newline between parts for clarity

