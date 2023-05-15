#!/bin/bash

# 2. Write a shell script to generate all combinations of 1, 2 and 3.

for i in 1 2 3
do
    for j in 1 2 3
    do
        for k in 1 2 3
        do
            echo "$i$j$k"
        done
    done
done


<<com
OUTPUT -

$ sh q2.sh
111
112
113
121
122
123
131
132
133
211
212
213
221
222
223
231
232
233
311
312
313
321
322
323
331
332
333

com
