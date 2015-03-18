source ~/.bash_aliases
alias ls='ls -Gfh'
alias ctags='/usr/local/bin/ctags'
PS1='(\A) \h:\W \u\$ '

# add work and personal SSH keys
ssh-add ~/.ssh/id_rsa_rackspace
ssh-add ~/.ssh/id_wiser
ssh-add ~/.ssh/id_rsa_digitalocean
