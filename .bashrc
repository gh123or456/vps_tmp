# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ls="ls -alF"
alias ifc="ip addr show"
alias re="source ~/.bashrc"
alias sd="shutdown now"
alias eb="vim ~/.bashrc"
