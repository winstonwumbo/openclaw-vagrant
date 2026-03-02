# openclaw-vagrant

Simple, cross-platform experimentation with OpenClaw from a secure VM

## Requirements
* [git](https://git-scm.com/)
* [vagrant](https://developer.hashicorp.com/vagrant)
* [vagrant-sshfs](https://github.com/dustymabe/vagrant-sshfs)
```
vagrant plugin install vagrant-sshfs
```
* [VirtualBox](https://www.virtualbox.org/) (Windows, macOS, Linux) or [libvirt](https://wiki.archlinux.org/title/Virt-manager) (Linux)

## Setup
1. Clone this repository with `git clone`:
```
git clone https://github.com/winstonwumbo/openclaw-vagrant.git
```
2. Initialize the Vagrant VM:
```
vagrant up
```
3. Enter the Vagrant VM:
```
vagrant ssh
```
4. Activate OpenClaw:
```
openclaw onboard --install-daemon
```
5. Access the OpenClaw Web UI from your browser:
```
http://localhost:18789
```

## Help
* If the OpenClaw Web UI has a device identity error, run:
    * ```
      openclaw dashboard
      ```
    * Open the new authentication link