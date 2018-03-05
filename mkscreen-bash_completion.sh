_mkscreen()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    local config_files=$( for x in `ls -1 $HOME/.config/screen/` ; do echo ${x} ; done )
    COMPREPLY=( $(compgen -W "${config_files}" -- ${cur}) )
}
complete -F _mkscreen mkscreen
