# System setup

My ansible based setup for provisioning my personal devices.

Currently only supports Arch linux desktop machine

**TODO**

- [ ] MacOS (modern terminal)
- [ ] Debian
- [ ] Storage server (gluster+nfs+smb)
- [ ] Docker server

## Setup

```bash
python -m venv .venv
source .venv/bin/activate
pip install ansible
ansible-galaxy collection install -r requirements.yml
```

## Usage

```
# if setting up directly on the machine

./setup-local.sh <host>

# or if setting up from a different machine

./setup-remote.sh <host>
```

## Development

```
vagrant plugin install vagrant-libvirt
vagrant up
```

```
vagrant provision
```

