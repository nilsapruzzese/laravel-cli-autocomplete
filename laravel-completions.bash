_laravel_completions() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    # Laravel commands
    if [ -z "$opts" ]; then
        opts=$(php artisan list | grep -v '\[' | awk '{print $1}')
    fi

    if [[ ${cur} == -* ]] ; then
        COMPREPLY=( $(compgen -W "--help --quiet --verbose --version --ansi --no-ansi --no-interaction --env --no-debug --force --step --seed --class --database --pretend --path" -- ${cur}) )
        return 0
    fi

    case "${prev}" in
        "artisan"|"php")
            COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
            return 0
            ;;
        *)
            ;;
    esac
}

_laravel_completions_install() {
    if grep -q "laravel_completion.sh" ~/.bash_profile; then
        echo "Laravel completions already installed."
    else
        echo "Retrieving Laravel commands..."
        opts=$(php artisan list | grep -v '\[' | awk '{print $1}')
        echo "Laravel commands retrieved."
        echo "Adding Laravel completions to bash profile..."
        echo "" >> ~/.bash_profile
        echo "# Laravel completions" >> ~/.bash_profile
        echo "source /path/to/laravel_completion.sh" >> ~/.bash_profile
        echo "Laravel completions added to bash profile."
    fi
}

_laravel_completions_uninstall() {
    if grep -q "laravel_completion.sh" ~/.bash_profile; then
        echo "Removing Laravel completions from bash profile..."
        sed -i '' '/laravel_completion.sh/d' ~/.bash_profile
        echo "Laravel completions removed from bash profile."
    else
        echo "Laravel completions not installed. Run _laravel_completions_install first."
    fi
}

_laravel_completions_update() {
    if grep -q "laravel_completion.sh" ~/.bash_profile; then
        echo "Updating Laravel commands..."
        opts=$(php artisan list | grep -v '\[' | awk '{print $1}')
        echo "Commands updated."
    else
        echo "Laravel completions not installed. Run _laravel_completions_install first."
    fi
}

complete -F _laravel_completions artisan
complete -F _laravel_completions "docker-compose php artisan"