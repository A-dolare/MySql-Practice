# 1️⃣ Install MySQL (Windows)

### Step 1: Download MySQL Installer

Download MySQL Community Installer from:

https://dev.mysql.com/downloads/installer/

Choose:

```text
MySQL Installer for Windows
```

Download and run the installer.

---

### Step 2: Select Setup Type

Choose:

```text
Developer Default
```

This installs:

- MySQL Server
- MySQL Workbench
- MySQL Shell
- Required dependencies

Click:

```text
Next → Execute
```

and wait for installation to finish.

---

### Step 3: Configure MySQL Server

During installation:

Choose:

```text
Standalone MySQL Server
```

Authentication Method:

```text
Use Strong Password Encryption
```

Create a password for the root user.

Example:

```text
Username: root
Password: your_password
```

⚠️ Remember this password.

You'll need it every time you connect to MySQL.

---

### Step 4: Verify Installation

Open:

```text
Command Prompt
```

Run:

```bash
mysql --version
```

Expected Output:

```text
mysql  Ver 8.x.x for Win64
```

If you see a version number, MySQL is installed correctly.

---

# 2️⃣ Open MySQL

Open Command Prompt.

Run:

```bash
mysql -u root -p
```

Enter your password when prompted.

You should see:

```text
mysql>
```

which means MySQL is running successfully.

---

# 3️⃣ Create a Database

Run:

```sql
CREATE DATABASE scottdb;
```

Verify:

```sql
SHOW DATABASES;
```

You should see:

```text
scottdb
```

in the list.

---

# 4️⃣ Select the Database

Run:

```sql
USE scottdb;
```

Expected Output:

```text
Database changed
```

---

# 5️⃣ Import the SCOTT Schema

The repository contains:

```text
db/scott.sql
```

which creates:

- EMP table
- DEPT table

and inserts sample data.

---

### Step 1: Exit MySQL

Run:

```sql
EXIT;
```

---

### Step 2: Navigate to Repository Folder

Example:

```bash
cd Downloads\SQL-for-Beginners
```

---

### Step 3: Import the Database

Run:

```bash
mysql -u root -p scottdb < db\scott.sql
```

Enter your password.

If everything is successful, no error messages will appear.

---

# 6️⃣ Verify Installation

Reconnect:

```bash
mysql -u root -p
```

Select database:

```sql
USE scottdb;
```

Check available tables:

```sql
SHOW TABLES;
```

Expected Output:

```text
+----------------+
| Tables_in_db   |
+----------------+
| EMP            |
| DEPT           |
+----------------+
```

---

View employee data:

```sql
SELECT * FROM EMP;
```

If rows are displayed, setup is complete. 🎉

---



