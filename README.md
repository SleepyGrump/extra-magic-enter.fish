# magic-enter-autoaccept.fish

> Like magic: hit enter to run a default command or accept the currently submitted autosuggestion.

This is based on the [magic-enter](https://github.com/mattmc3/magic-enter.fish) plugin.

* Why a new fork instead of a contribution? This is entirely new behavior some people might not want. You should be able to go get magic-enter and entirely skip the auto-accept idea.
* Why not a second plugin running side-by-side? Because you can't bind two plugins to the same key as far as I can tell.

## Usage

* At a non-empty Fish prompt, press enter to accept and run the suggested command.
* Press alt-enter to clear the current suggestion and immediately run the command exactly as you typed it.
  * This is necessary in the case of commands like `ex` and `exit`. Most of the time, you probably want `exit`, but occasionally you do just want to start up the `ex` editor, and there needs to be a way to do that.

Example:

```fish
$ # The | indicates your cursor:
$ cd |$HOME/.config # fish made an automatic suggestion you like!
$ # hit enter to accept the suggestion
$ /var/home/yourname/.config/
```

The rest of this is default functionality ported over from [magic-enter](https://github.com/mattmc3/magic-enter.fish):

* At an empty Fish prompt, press enter to run a configurable default command.
  * If you're in a normal directory, the default command is `ls`.
  * In a git repo, it will run `git status -sb`.

## Customization

The original [magic-enter](https://github.com/mattmc3/magic-enter.fish) allows you to customize the commands executed when you hit enter. This version offers those customizations still, but makes no changes, so I will leave the documentation to the other plugin. There are no other customization options for this version of the plugin. (You can just edit the source yourself if you want to change the bindings.)

## Install

[fisher] installation:

```shell
fisher install sleepygrump/magic-enter-autoaccept.fish
```

[fisher]: https://github.com/jorgebucaran/fisher
