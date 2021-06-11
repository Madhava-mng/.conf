alias li5tgen="/data/data/com.termux/files/home/clone/li5tgen/bin/li5tgen"

export HISTSIZE=1000

function code(){
	export exit_code=$?
	if [[ $exit_code -ne 0 ]];then
		exit_code+="%F{98,98,98}%C %F{green}•> %F{white}"
		echo $exit_code
	else
		echo "%F{98,98,98}%C %F{green}•> %F{white}"

	fi
}
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b) '
setopt PROMPT_SUBST

export PS1='%(?..%F{red} ✘ )${vcs_info_msg_0_}%F{98,98,98}%C %F{green}•>%F{white} '



echo "
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
#PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%F{white}'
" > /dev/null

alias tree='tree -C'
alias grep='grep --color'
alias ls='ls --color'
alias ll='ls -l --color'
alias la='ls -lA --color'


bindkey "e[1~" beginning-of-line
bindkey "e[4~" end-of-line
bindkey "e[5~" beginning-of-history
bindkey "e[6~" end-of-history
bindkey "e[3~" delete-char
bindkey "e[2~" quoted-insert
bindkey "e[5C" forward-word
bindkey "eOc" emacs-forward-word
bindkey "e[5D" backward-word
bindkey "eOd" emacs-backward-word
bindkey "ee[C" forward-word
bindkey "ee[D" backward-word
bindkey "^H" backward-delete-word
# for rxvt
#bindkey "e[8~" end-of-line
#bindkey "e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
#bindkey "eOH" beginning-of-line
#bindkey "eOF" end-of-line
# for freebsd console
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix
