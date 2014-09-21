Miscellaneous information about Bashsh
======================================


Motivation and historical background
------------------------------------

I've written several handy Bash utilities so far that all have started out with the following few lines:

    #!/usr/bin/env bash

    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    . "$DIR/fn"

My primary motivation for Bashsh is to reduce this boilerplate to just

    #!/usr/bin/env bashsh-0

My secondary motivation for Bashsh is to have a playground for incremental improvements to Bash, to create a programming language that is mostly like Bash, but much more robust, and more similar to other common scripting languages:

- Error handling. Not just `set -e` by default, but also a robust `try { ... } finally { ... }` construct. (Awkward in Bash 3.)

- Safe use of variables that contain spaces:

        file='program name'
        gcc -o $file $file.c
        # Bash: gcc -o "$file" "$file.c"

- Safe use of weird filenames / directory names: (TODO: Find a way to distinguish files from regular strings here.)

        whatever='-bad file path'
        program $whatever
        # Bash: program "./$whatever" (if relative)
        #   or: program   "$whatever" (if absolute)

- CoffeeScript-inspired syntax:

        if $a == $b
          echo equal
        else
          echo not equal

        # Bash:
        # if [[ $a = $b ]] ; then
        #   echo equal
        # else
        #   echo not equal
        # fi

        while true
          break if $value > 40

        # Bash:
        # while true ; do
        #   if [[ $value -gt 40 ]] ; then
        #     break
        #   fi
        # done


What the name means
-------------------

First I wanted to call it "Simba" (for SIMple BAsh), but someone [already got that name on NPM](https://www.npmjs.org/package/simba).

So I came up with "Bashsh" (for BASH SHell) and searched on [NPM](https://www.npmjs.org) and [Homebrew](http://braumeister.org/) and found it to be available. Also, [other Google results](https://encrypted.google.com/search?hl=en&q=bashsh) were completely unrelated.

Interestingly, via [Duckduckgo](https://duckduckgo.com/?q=bashsh) I found [this baby name website](http://hamariweb.com/names/muslim/arabic/boy/bashsh-meaning_460) which explained "Bashsh" to mean "Glad, Cheerful". I'm totally fine with that, as I'm glad and cheerful to now have a nicer language than plain Bash to work in. :)

Also, if I really ever implement a CoffeeScript-like syntax, I guess "Bashsh" will be way easier to Google than "BashScript". Though that might be a missed marketing opportunity as well if it turns out to become popular. ;)
