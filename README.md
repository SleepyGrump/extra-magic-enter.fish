# extra-magic-enter.fish

> Like magic: hit enter to run a default command or accept the currently submitted autosuggestion.

This is based on the [magic-enter] plugin. Why a new fork instead of a contribution? Entirely new behavior some people might not want. You should be able to go get magic-enter and entirely skip the auto-accept idea.

## Usage

* At an empty Fish prompt, press enter to run a configurable default command.
  * If you're in a normal directory, the default command is `ls`.
  * In a git repo, it will run `git status -sb`.
* At a NON-empty Fish prompt, press enter to accept and run the suggested command.
* Press alt-enter to clear the current suggestion and instead run the command exactly as you typed it.
  * This is necessary in the case of commands like `ex` and `exit`. Most of the time, you probably want `exit`, but occasionally you do just want to start up the `ex` editor, and there needs to be a way to do that.

Auto-accept suggestion with the enter key:

```fish
$ # The | indicates your cursor:
$ cd |$HOME/.config
$ # hit enter to accept the suggestion
$ /var/home/yourname/.config/
```

## Customization

The original [magic-enter][magic-enter] allows you to customize the commands executed when you hit enter. This version offers those customizations still, but makes no changes, so I will leave the documentation to the other plugin. There are no other customization options for this version of the plugin. (You can just edit the source yourself.)

## Install

[fisher] installation:

```shell
fisher install sleepygrump/extra-magic-enter.fish
```

[fisher]: https://github.com/jorgebucaran/fisher
[omz-magic-enter]: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/magic-enter
