#!/bin/bash


# 3. Write a shell script which counts the number of consonants and vowels in a given sentence.


count_vowels() {
  echo "$1" | grep -io '[aeiou]' | wc -l
}

count_consonants() {
  echo "$1" | grep -io '[bcdfghjklmnpqrstvwxyz]' | wc -l
}

echo "Enter a sentence: "
read sentence

num_vowels=$(count_vowels "$sentence")
num_consonants=$(count_consonants "$sentence")

echo "Number of vowels: $num_vowels"
echo "Number of consonants: $num_consonants"



<<com
OUTPUT - 

Enter a sentence: 
The quick brown fox jumps over the lazy dog.
Number of vowels: 11
Number of consonants: 24

com