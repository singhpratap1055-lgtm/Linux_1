# 1.⁠ ⁠backup.sh Script
Create a new file named backup.sh inside your project folder:
![images](./images/l1.png)

# 2. Make Script Executable
Run the following command once:
chmod +x backup.sh

# 3. Testing the script
## 1. Create some samples .txt files:
![images](./images/l2.png)
## 2. Run the script:
./backup.sh
![images](./images/l3.png)
## 3. Check the backup/folder:
ls backup/
![images](./images/l4.png)

# LAB5 – File & Backup Automation

## Objective
Automate the backup of ⁠ .txt ⁠ files into a ⁠ backup/ ⁠ folder with timestamps in filenames.

---

## Script Explanation

1.⁠ ⁠⁠ mkdir -p backup ⁠  
   Creates a folder named ⁠ backup ⁠ if it does not exist.

2.⁠ ⁠⁠ timestamp=$(date +"%Y%m%d_%H%M%S") ⁠  
   Generates a timestamp (format: YYYYMMDD_HHMMSS).

3.⁠ ⁠⁠ for file in *.txt; do ... done ⁠  
   Loops through all ⁠ .txt ⁠ files in the current directory.

4.⁠ ⁠⁠ basename "$file" .txt ⁠  
   Extracts the file name without extension.

5.⁠ ⁠⁠ cp "$file" "backup/${filename}_$timestamp.txt" ⁠  
   Copies the file into ⁠ backup/ ⁠ with the timestamp appended.

---

## Example Run

### Input
Created two ⁠ .txt ⁠ files:

file1.txt
file2.txt


### Command
./backup.sh


### Output
Files copied into ⁠ backup/ ⁠ with timestamps:

![images](./images/l3.png)
