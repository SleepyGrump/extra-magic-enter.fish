
function magic-enter-cmd --description "Print the command to run when no command was given"
    set -l cmd ls
    if command git rev-parse --is-inside-work-tree &>/dev/null
        set cmd "git status -sb"
    end
    echo $cmd
end

function magic-enter-autoaccept
    set -l cmd (commandline)
    if test -z "$cmd"
        commandline -r (magic-enter-cmd)
        commandline -f suppress-autosuggestion
    else                # This is the critical bit for the auto-accepting
        commandline -f accept-autosuggestion
    end
    commandline -f execute
end

function magic-enter-autoaccept-bindings --description "Bind magic-enter for default and vi key bindings"
    bind \r magic-enter-autoaccept
    bind alt-\r 'commandline -f suppress-autosuggestion execute' # execute exactly what you typed instead of the auto-suggestion
    if functions -q fish_vi_key_bindings
        bind -M insert \r magic-enter-autoaccept
        bind -M default \r magic-enter-autoaccept
    end
end
magic-enter-autoaccept-bindings
