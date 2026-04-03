# SSH Setup and Key Generation Report
## Name: Temitope James Dada.

This setup allows secure remote access and prepares the system for SSH‑based workflows such as Git operations, remote administration, and VS Code Remote SSH.
### 1. Checking SSH Service Status

I began by verifying whether the SSH service was installed and running
on my system:

``` bash
systemctl status ssh
```

The output showed that the SSH service was not installed, meaning OpenSSH Server had not yet been configured on the machine.

------------------------------------------------------------------------

### 2. Updating Package Lists

Before installing any new packages, I updated the system's package index:

``` bash
sudo apt update
```

This ensures the system installs the latest available versions of packages.

------------------------------------------------------------------------

### 3. Installing OpenSSH Server

To enable SSH access, I installed the OpenSSH server package:

``` bash
sudo apt install openssh-server
```

This installs the SSH daemon (`sshd`), which allows remote login to the machine.

------------------------------------------------------------------------

### 4. Enabling and Starting the SSH Service

After the installation, I activated the SSH service and ensured it starts automatically on boot:

``` bash
sudo systemctl enable --now ssh
```

-   `enable` --- ensures SSH starts at boot\
-   `--now` --- starts the service immediately

------------------------------------------------------------------------

### 5. Verifying SSH is Running

I checked the service status again:

``` bash
systemctl status ssh
```

This time, the output showed:

    Active: active (running)

This confirmed that SSH was successfully installed and running.

------------------------------------------------------------------------

### 6. Generating an SSH Key Pair

To securely authenticate with remote systems, I generated a new SSH key pair using the ed25519 algorithm:

``` bash
ssh-keygen -t ed25519 -C "tdada@ewu.edu"
```

-   `-t ed25519` --- uses a modern, secure key type\
-   `-C "tdada@ewu.edu"` --- adds a label/comment to the key

I saved the key in my default SSH directory:

    ~/.ssh/id_ed25519
    ~/.ssh/id_ed25519.pub

The private key remains on my machine, while the public key i have shared on my github.

------------------------------------------------------------------------

### Conclusion

By completing these steps, I successfully:

-   Installed and activated the OpenSSH server\
-   Verified that SSH is running\
-   Generated a secure SSH key pair for authentication


