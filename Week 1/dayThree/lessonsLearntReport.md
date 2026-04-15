# CHROOT

### 1. What is chroot?
`chroot` (change root) is a Linux command that changes the apparent root directory (`/`) for a running process and its child processes.

---

### 2. Where would you use it?
- System recovery (e.g., repairing a system from a live USB)
- Testing applications in an isolated environment  
- Creating lightweight containers or sandboxes  

---

### 3. What exactly does it do?
It restricts a process so that it can only access files within a specified directory.  
That directory becomes the new root (`/`) for the process.

---

### 4. How do you mount a drive from the command line?

Basic command:

```bash
sudo mount /dev/sdX1 /mnt
```

#### Explanation:
- `sudo` → Executes the command with administrative privileges  
- `mount` → Attaches a filesystem to the directory tree  
- `/dev/sdX1` → The device file (replace with actual partition, e.g., `/dev/sda1`)  
- `/mnt` → Mount point (directory where the filesystem is attached)  

#### Example with flags:

```bash
sudo mount -t ext4 -o rw /dev/sda1 /mnt
```

#### Flag explanations:
- `-t ext4` → Specifies the filesystem type (ext4)  
- `-o rw` → Mounts the filesystem in read-write mode  
  - `ro` would mount it as read-only  

---

### 5. What are the /sys and /proc directories?

#### `/proc`
- A virtual filesystem that provides runtime information about:
  - Processes  
  - Kernel state  
- eg:
  - `/proc/cpuinfo`
  - `/proc/meminfo`

#### `/sys`
- A virtual filesystem that provides information about:
  - Hardware devices  
  - Kernel subsystems  
- Used for interacting with device drivers and system hardware  

---

### 6. How do you change a password from the command line?

For an existing user, you can use:
```bash
passwd
```

To enter a password and confirm it.  

#### To change another user's password:

```bash
sudo passwd username
```

- `sudo` → Required for administrative privileges  
- `username` → The user whose password is being changed  

---

### 7. How do you add a user on the command line?

```bash
sudo useradd -m -s /bin/bash username
```

#### Flag explanations:
- `-m` → Creates a home directory for the user  
- `-s /bin/bash` → Sets the default shell to Bash  

#### Set password for the new user:

```bash
sudo passwd username
```

---

### 8. How do you put a user in a group from the command line?

```bash
sudo usermod -aG groupname username
```

#### Flag explanations:
- `-a` → Appends the user to the group (prevents removal from other groups)  
- `-G` → Specifies the group to add the user to  
---
### Reference 
https://wiki.archlinux.org/title/Chroot