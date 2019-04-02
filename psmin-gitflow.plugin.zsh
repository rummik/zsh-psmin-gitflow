#!/bin/zsh

if [[ ! -v _psmingpi ]]; then
	_psmingpi=$RANDOM
	eval "function _${_psmingpi}$(functions git_prompt_info)"
fi

function git_prompt_info {
	setopt localoptions extendedglob
	local gpi="_${_psmingpi}git_prompt_info"

	if [[ -v _PS1$$ ]]; then
		echo ${"$($gpi)"/(#b)([a-z])[a-z]#\/([A-Z]#-[0-9]#|[0-9]#)-[a-z0-9-]#/${(j:/:)match}}
	else
		$gpi
	fi
}
