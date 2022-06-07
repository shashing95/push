#! /bin/bash -x

arr[0]="XX1 1"
arr[1]="XX2 2" 
arr[2]="XX3 3"
arr[3]="XX4 4"
arr[4]="XX5 5"
arr[5]="XX1 1"
arr[6]="XX7 7"
arr[7]="XX8 8"

duplicate() { printf '%s\n' "${arr[@]}" | sort -cu |& awk -F: '{ print $5 }'; }

duplicate_match=$(duplicate)

echo "array: ${arr[@]}"

# echo "duplicate: $duplicate_match"

[[ ! $duplicate_match ]] || { echo "Found duplicate:$duplicate_match"; exit 0; }

echo "no duplicate"
