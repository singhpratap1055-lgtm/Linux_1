Here's a **detailed tutorial on basic terminal commands** that work on **Linux, macOS, and Git Bash (Windows)**. These commands are essential for navigating and managing files from the terminal, especially for coding and version control (e.g., Git, VS Code, etc.).

---

## ✅ 1. **Navigation Commands**

### `pwd` – Print Working Directory

Shows the current location in the filesystem.

```bash
pwd
```

📌 Output example:
![images](./images/ls1.png)
```
/Users/abhaypratapsingh/Documents/GitHub/Linux_1
```

---

### `ls` – List Directory Contents

Lists files and folders in the current directory.

```bash
ls
```
![images](./images/ls2.png)
* `ls -l` → Detailed list (permissions, size, date)
![images](./images/ls3.png)
* `ls -a` → Shows hidden files (those starting with `.`)
![images](./images/ls4.png)
* `ls -la` → Combined
![images](./images/ls5.png)

---

### `cd` – Change Directory

Moves into a directory.

```bash
cd folder_name
```
![images](./images/ls6.png)

Examples:

```bash
cd Documents        # Go to Documents
cd ..               # Go up one level
cd /                # Go to root
cd ~                # Go to home directory

```
![images](./images/ls6.png)

---

## ✅ 2. **File and Directory Management**

### `mkdir` – Make Directory

Creates a new folder.

```bash
mkdir new_folder
```
![images](./images/ls10.png)
---

### `touch` – Create File

Creates an empty file.

```bash
touch file.txt
```
![images](./images/ls11.png)
---

### `cp` – Copy Files or Directories

```bash
cp source.txt destination.txt
```
![images](./images/ls12.png)

* Copy folder:

```bash
cp -r folder1 folder2
```
![images](./images/ls13.png)
---

### `mv` – Move or Rename Files

```bash
mv oldname.txt newname.txt
```
![images](./images/ls14.png)
```bash
mv file.txt ~/Documents/     # Move file
```
![images](./images/ls15.png)
---

### `rm` – Remove Files

```bash
rm file.txt          # Delete file

![images](./images/ls16.png)

rm -r folder_name    # Delete folder (recursively)
```
![images](./images/ls17.png)

⚠️ **Be careful!** There is no undo.

---

## ✅ 3. **File Viewing & Editing**

### `cat` – View File Contents

Displays content in terminal.

```bash
cat file.txt
```
![images](./images/ls18.png)
---

### `nano` – Edit Files in Terminal

A basic terminal-based text editor.

```bash
nano file.txt
```
![images](./images/ls19.png)

* Use arrows to move
* `CTRL + O` to save
* `CTRL + X` to exit

---

### `clear` – Clears the Terminal

```bash
clear
```
![images](./images/ls20.png)

Shortcut: `CTRL + L`

---

## ✅ 4. **System Commands**

### `echo` – Print Text

Useful for debugging or scripting.

```bash
echo "Hello, World!"
```


---

### `whoami` – Show Current User

```bash
whoami
```

---

### `man` – Manual for Any Command

```bash
man ls
```

Use `q` to quit the manual.

---
![images](./images/ls23.png)

## ✅ 5. **Searching and Finding**

### `find` – Locate Files

```bash
find . -name "*.txt"
```

🔍 Finds all `.txt` files in current folder and subfolders.

---

### `grep` – Search Inside Files

```bash
grep "hello" file.txt
```

🔍 Searches for the word `hello` inside `file.txt`.

---

## ✅ 6. **Helpful Shortcuts**

| Shortcut   | Action                      |
| ---------- | --------------------------- |
| `Tab`      | Auto-complete files/folders |
| `↑ / ↓`    | Browse command history      |
| `CTRL + C` | Stop a running command      |
| `CTRL + L` | Clear screen                |

---

## ✅ 7. **Bonus: Chaining Commands**

* **Run multiple commands**:

```bash
mkdir test && cd test && touch hello.txt
```
![images](./images/ls24.png)

* **Run only if previous command succeeds**: `&&`
* **Run regardless of success**: `;`

---
