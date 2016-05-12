## Node Machine role

Role for a generic Node.js development box, with Node.js installed through NVM.

 - Install Git
 - Install NVM from official site
 - Install Node.js versions
 - Install global packages

Depends on base role.

The `nvm` activation code is placed in `/etc/profile.d/nvm.sh` and loaded for all users with Bash shell. Every Ansible `nvm` shell command must be preceded by `source /etc/profile.d/nvm.sh || true &&` and the shell used must be `/bin/bash`.

In case you need interactive `su` or `sudo` commands, use `su -l` or `sudo -i` to access the environment of the target user.

The `nvm` directory `/usr/local/nvm` is owned by `root:staff`, so global packages has to be installed via Ansible playbook or shell with root permissions. Local application packages can still be installed by the deploy/app user.
