#!/bin/bash

_laravel_completions() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    # Laravel commands
    opts="
    clear-compiled
    down
    env
    help
    inspire
    list
    migrate
    optimize
    serve
    test
    tinker
    up
    auth:clear-resets
    cache:clear
    cache:table
    cache:forget
    config:cache
    config:clear
    db:seed
    db:wipe
    event:cache
    event:clear
    event:generate
    event:list
    key:generate
    make:channel
    make:command
    make:component
    make:controller
    make:event
    make:exception
    make:factory
    make:job
    make:listener
    make:mail
    make:middleware
    make:migration
    make:model
    make:notification
    make:observer
    make:policy
    make:provider
    make:request
    make:resource
    make:rule
    make:seeder
    make:test
    migrate:fresh
    migrate:install
    migrate:refresh
    migrate:reset
    migrate:rollback
    migrate:status
    notifications:table
    package:discover
    queue:failed
    queue:failed-table
    queue:flush
    queue:forget
    queue:listen
    queue:restart
    queue:retry
    queue:table
    queue:work
    route:cache
    route:clear
    route:list
    schedule:run
    session:table
    storage:link
    vendor:publish
    stub:publish
    view:cache
    view:clear
    "

    if [[ ${cur} == -* ]] ; then
        COMPREPLY=( $(compgen -W "--help --quiet --verbose --version --ansi --no-ansi --no-interaction --env --no-debug --force --step --seed --class --database --pretend --path" -- ${cur}) )
        return 0
    fi

    case "${prev}" in
        "artisan")
            COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
            return 0
            ;;
        *)
            ;;
    esac
}

complete -F _laravel_completions artisan
