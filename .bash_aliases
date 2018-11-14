# Clear the terminal
alias cls='clear'

# Disk free in human terms
alias df='df -h'

# List paths
alias path='echo -e ${PATH//:/\\n}'

alias grep='grep --color=auto'

# perform 'ls' after 'cd' if successful.
cdls() {
  builtin cd "$*"
  RESULT=$?
  if [ "$RESULT" -eq 0 ]; then
    ls -lh
  fi
}

alias cd='cdls'

#cd into vagrant dir
alias cdvs='cd ~/Documents/vagrant'

#ssh to salt-master
alias sshsalt='ssh zero.slc.chgit.com'

#cd into salt dir
alias cdsalt='cd ~/Documents/chg/repos/salt'

alias vstat='vagrant status'
alias flushdns='sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache'