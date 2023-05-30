function _nz {
    local arg_len="${#COMP_WORDS[@]}"
    if [ "$3" == "$1" ] && [ "$arg_len" == 2 ]; then
        COMPREPLY=( $(compgen -W "update cleanup version help" -- "$2") )
    elif [ "$3" == "update" ] && [ "$arg_len" == 3 ]; then
        COMPREPLY=( $(compgen -W "nightly nz" -- "$2") )
    else
        COMPREPLY=()
    fi
}
complete -F _nz nz
