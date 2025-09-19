### ----------CHECK THE NUMBER IS ARMSTRONG-----------
![images](./images/n1.png)



## EXPLANATION........

# 📌 Script Explanation (Step by Step)
#!/bin/bash
# armstrong.sh
# Usage: ./armstrong.sh 153
Shebang (#!/bin/bash) → tells Linux to run the script with Bash.

Comments explain usage: ./armstrong.sh number.

1.⁠ ⁠Input validation
if [ $# -ne 1 ]; then
  echo "Usage: $0 <non-negative-integer>"
  exit 1
fi

n="$1"
if ! [[ $n =~ ^[0-9]+$ ]]; then
  echo "Input must be a non-negative integer."
  exit 1
fi
Checks if exactly one argument is passed.

Ensures the input is a non-negative integer (using regex ^[0-9]+$).

2.⁠ ⁠Count the number of digits
temp="$n"; digits=0
while [ "$temp" -gt 0 ]; do
  temp=$(( temp / 10 ))
  ((digits++))
done
[ $digits -eq 0 ] && digits=1   # handle case for 0
Divides the number repeatedly by 10 to count digits.

Example: For 153 → 3 digits.

3.⁠ ⁠Compute Armstrong sum
sum=0
temp="$n"
while [ "$temp" -gt 0 ]; do
  d=$(( temp % 10 ))   # get last digit
  pow=1
  for ((i=0;i<digits;i++)); do
    pow=$(( pow * d ))  # raise digit to 'digits' power
  done
  sum=$(( sum + pow ))  # add to sum
  temp=$(( temp / 10 )) # move to next digit
done
Extracts each digit.

Raises it to the power of number of digits.

Adds to running total sum.

4.⁠ ⁠Compare sum with original number
if [ "$sum" -eq "$n" ]; then
  echo "$n is an Armstrong number."
else
  echo "$n is NOT an Armstrong number (sum=$sum)."
fi
If sum equals original → Armstrong number.

Otherwise → Not Armstrong.

✅ Example Run
![images](./images/n2.png)


