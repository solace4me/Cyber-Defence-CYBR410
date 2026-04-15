# Linux Journal Questions

## Name: Temitope James Dada

## 1. What is a block device?

A **block device** is a type of file in Linux that provides buffered access to hardware devices in fixed-size blocks like chunks of data. These devices support random access, allowing data to be read or written at any position.

So devices like hard drives (`/dev/sda`), SSDs, USB drives are used for storing file systems and persistent data while character devices do handle data as continuous streams

---

## 2. How would one list all the block devices in Linux?

By Using the command:

```bash
lsblk
```

### Where does `lsblk` get its information?

`lsblk` collects information from:

* The `/sys` virtual filesystem (especially `/sys/block`)
* The `/proc` filesystem
* The udev device manager database

### What command line argument would you add to show the file system on each block device?

```bash
lsblk -f
```

* The `-f` flag displays file system type, UUID, and mount points

---

## 3. What command line tool would I use to list file system space usage?

We can use `df` command:

```bash
df
```

### For example:

```bash
df -h
```

* `-h` displays output in human-readable format (KB, MB, GB)
* Shows total, used, and available disk space along with the mount points

---

## 4. Are the block devices listed on your machine modified after you run `sudo modprobe nbd`?

Yes, they are modified.

### How they were modified:

When you run:

```bash
sudo modprobe nbd
```

* It loads the Network Block Device (nbd) kernel module creates new virtual block devices such as:

  * `/dev/nbd0`
  * `/dev/nbd1`
  * `/dev/nbd2`

### Effect:

* These devices appear when running `lsblk`
* They function as virtual disks that can be connected to remote storage over a network

### Reference:
* https://www.geeksforgeeks.org/linux-unix/lsblk-command-in-linux-with-examples/ 
---
