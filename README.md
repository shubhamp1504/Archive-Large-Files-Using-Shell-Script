📦 Archive Large Files Using Shell Script

📌 Project Description

This project is a **Bash shell script** that automatically finds files larger than a specified size (e.g., 20KB/20MB) from a given directory and moves them into an `archive` folder.
It helps in **disk space management** and is useful for **system administrators and DevOps engineers**.

---

## 🚀 Features

* ✅ Checks if base directory exists
* 📂 Creates `archive` directory if not present
* 🔍 Finds files larger than a defined size
* 🗂 Moves large files to archive folder
* 🛡 Handles file names with spaces safely
* ⚙ Configurable size, depth, and base path

---

## 🛠 Technologies Used

* Linux (Ubuntu)
* Bash / Shell Scripting
* `find`, `mkdir`, `mv`

---

## 📁 Project Structure

```
archive_project.sh
README.md
archive/
```

---

## ⚙ Script Configuration

You can modify these variables in the script:

```bash
BASE=/home/shubham
DEPTH=1
SIZE=20k
```

---

## ▶ How to Run the Script

### 1️⃣ Give execute permission

```bash
chmod +x archive_project.sh
```

### 2️⃣ Run the script

```bash
./archive_project.sh
```

---

## 🧪 Sample Code Logic

```bash
find "$BASE" -maxdepth "$DEPTH" -type f -size +20k | while read -r file
do
    mv "$file" "$BASE/archive/"
done
```

---

## 📌 Use Case

* Disk cleanup automation
* Log file management
* Server maintenance
* DevOps/Linux practice project

---

## 🧠 Learning Outcomes

* Shell scripting fundamentals
* File handling in Linux
* Automation using Bash
* Real-world DevOps use case

---

## 👨‍💻 Author

**Shubham Patil**
DevOps Enthusiast | Linux | Shell Scripting
📍 Pune, India

---

## ⭐ Future Enhancements

* ⏱ Cron job automation
* 📦 Gzip compression
* 📧 Email alert after archiving
* 🧾 Log file generation

---


