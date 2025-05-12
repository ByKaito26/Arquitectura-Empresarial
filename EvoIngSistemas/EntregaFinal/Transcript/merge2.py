#!/usr/bin/python3
# Merge transcript parts
merged_filename = "transcript_2021MAEG.txt"

with open(merged_filename, "w") as outfile:
    for fname in ["transcript_part1_2021MAEG.txt", "transcript_part2_2021MAEG.txt"]:
        with open(fname, "r") as infile:
            outfile.write(infile.read())
            outfile.write("\n")  # Add newline between parts for clarity

