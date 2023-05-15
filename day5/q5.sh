#!/bin/bash

# 5. Write a shell script that shows the names of all the non-directory files in the current directory and calculates the sum of the size of them.


total_size=0

for file in *
do
    if [ -f "$file" ] && [ ! -d "$file" ]
    then
        echo "File: $file, Size: $(du -h "$file" | cut -f 1)"

        size=$(stat -c %s "$file")
        total_size=$((total_size + size))
    fi
done

echo "Total size of non-directory files: $(numfmt --to=iec-i --suffix=B $total_size)"


<<com
OUTPUT -

$ sh q5.sh
File: q1.sh, Size: 4.0K
File: q2.sh, Size: 4.0K
File: q3.sh, Size: 4.0K
File: q4.sh, Size: 4.0K
File: q5.sh, Size: 4.0K
Total size of non-directory files: 4.1KiB

com