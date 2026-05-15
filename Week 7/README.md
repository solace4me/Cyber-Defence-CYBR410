## Name: Temitope James DADA
## Vagrant Orchestration Lab
This project uses Vagrant and VirtualBox to automatically deploy an NGINX web server inside a virtual machine. The environment can be installed, deployed, tested, and cleaned up using the provided shell scripts.

vagrant-lab/
│
├── install.sh
├── deploy.sh
├── cleanup.sh
└── Vagrantfile


### Files
**install.sh**
Installs all required dependencies (VirtualBox and Vagrant) so the orchestration environment can run.

**deploy.sh**
Starts the VM using vagrant up, installs NGINX inside the VM, and exposes it on http://localhost:8080.

**cleanup.sh**
Destroys the VM and removes Vagrant artifacts so the environment resets to a clean state.

**Vagrantfile**
Defines the VM configuration (box name, provider, port forwarding). Vagrant uses this file to know how to build and configure the VM.

### How to Run
**Install dependencies**
`./install.sh`

Deploy the VM
`./deploy.sh`

Verify the service
`curl http://localhost:8080`

Cleanup
`./cleanup.sh`

File Description and Screenshots of successful operations are ![here](VagrantOrchestrationLab.md)

