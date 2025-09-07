Here's a **detailed tutorial on basic terminal commands** that work on **Linux, macOS, and Git Bash (Windows)**. These commands are essential for navigating and managing files from the terminal, especially for coding and version control (e.g., Git, VS Code, etc.).

---

## ✅ 1. **Navigation Commands**

### `pwd` – Print Working Directory

Shows the current location in the filesystem.

```bash
pwd
```

📌 Output example:
![images](./images/b1.png)
```
/Users/abhaypratapsingh/Documents/GitHub/Linux_1
```

---

### `ls` – List Directory Contents

Lists files and folders in the current directory.

```bash
ls
```
![images](./images/b2.png)
* `ls -l` → Detailed list (permissions, size, date)
![images](./images/b3.png)
* `ls -a` → Shows hidden files (those starting with `.`)
![images](./images/b4.png)
* `ls -la` → Combined
![images](./images/b5.png)

---

### `cd` – Change Directory

Moves into a directory.

```bash
cd folder_name
```
![images](./images/b6.png)

Examples:

```bash
cd Documents        # Go to Documents
cd ..               # Go up one level
cd /                # Go to root
cd ~                # Go to home directory

```
![images](./images/b7.png)

---

## ✅ 2. **File and Directory Management**

### `mkdir` – Make Directory

Creates a new folder.

```bash
mkdir new_folder
```
![images](./images/b8.png)
---

### `touch` – Create File

Creates an empty file.

```bash
touch file.txt
```
![images](./images/b9.png)
---

### `cp` – Copy Files or Directories

```bash
cp source.txt destination.txt
```
![images](./images/b10.png)

* Copy folder:

```bash
cp -r folder1 folder2
```
![images](./images/b11.png)
---

### `mv` – Move or Rename Files

```bash
mv oldname.txt newname.txt
```
![images](./images/b12.png)
```bash
mv file.txt ~/Documents/     # Move file
```
![images](./images/b13.png)
---

### `rm` – Remove Files

```bash
rm file.txt          # Delete file

![images](./images/b14.png)

rm -r folder_name    # Delete folder (recursively)
```
![images](./images/b24.png)

⚠️ **Be careful!** There is no undo.

---

## ✅ 3. **File Viewing & Editing**

### `cat` – View File Contents

Displays content in terminal.

```bash
cat file.txt
```
![images](./images/b15.png)
---

### `nano` – Edit Files in Terminal

A basic terminal-based text editor.

```bash
nano file.txt
```

![images](./images/b16.png)

* Use arrows to move
* `CTRL + O` to save
* `CTRL + X` to exit

---

### `clear` – Clears the Terminal

```bash
clear
```
![images](./images/b17.png)

Shortcut: `CTRL + L`

---

## ✅ 4. **System Commands**

### `echo` – Print Text

Useful for debugging or scripting.

```bash
echo "Hello, World!"
```
![images](./images/b18.png)

---

### `whoami` – Show Current User

```bash
whoami
```
![images](./images/b19.png)

---

### `man` – Manual for Any Command

```bash
man ls
```
![images](./images/b20.png)

Use `q` to quit the manual.

---


## ✅ 5. **Searching and Finding**

### `find` – Locate Files

```bash
find . -name "*.txt"
```
![images](./images/b21.png)
🔍 Finds all `.txt` files in current folder and subfolders.

---

### `grep` – Search Inside Files

```bash
grep "hello" file.txt
```
![images](./images/b22.png)
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
![images](./images/b23.png)

* **Run only if previous command succeeds**: `&&`
* **Run regardless of success**: `;`

---




