# marks filesystem jumper

export MARKPATH=$HOME/.marks

function jump { 
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}

function mark { 
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}

function unmark { 
    rm -i "$MARKPATH/$1"
}

function marks {
    \ls -l "$MARKPATH" 
    \| tail -n +2 
    \| sed 's/  / /g' 
    \| cut -d' ' -f9- 
    \| awk -F ' -> ' '{printf "%-10s -> %s\n", $1, $2}'
}

_completemarks() {
	local curw=${COMP_WORDS[COMP_CWORD]}
	local wordlist=$(find $MARKPATH -type l -exec basename {} \;)
	COMPREPLY=($(compgen -W '${wordlist[@]}' -- "$curw"))
	return 0
}

complete -F _completemarks jump unmark


