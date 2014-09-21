Working on Bashsh
=================

If you would like to work on Bashsh, this document should give you the most important information to get you started quickly.

If you have a question about developing Bashsh that is not answered by this document, please feel free to create an issue with your question.


Creating a GitHub issue
-----------------------

**Feel free to just create your issue. There are no policies yet.**


Compatibility version
---------------------

From the very beginning, Bashsh requires scripts to specify an explicit compatibility version, e.g.:

    #!/usr/bin/env bashsh-0

Any change that might break scripts depending on Bashsh warrants a new version. This compatibility version is the same number as the major version number, and compatible with [semver](http://semver.org/).


Testing
-------

The policy for testing is: There is no version 1 without a full test suite!

I will probably make it self-hosting, using Bashsh-0 to test Bashsh-1. :)


Publishing a new release
------------------------

    npm version patch  # minor, major
    git push origin master --tags
    npm publish


Motivation and historical background
------------------------------------

I've written several handy Bash utilities so far that all have started out with the following few lines:

    #!/usr/bin/env bash

    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    . "$DIR/fn"

My primary motivation for Bashsh is to reduce this boilerplate to just

    #!/usr/bin/env bashsh-0

My secondary motivation for Bashsh is to create a programming language that is mostly like Bash, but much more robust, and more similar to other common scripting languages.


What the name means
-------------------

First I wanted to call it "Simba" (for SIMple BAsh), but someone [already got that name on NPM](https://www.npmjs.org/package/simba).

So I came up with "Bashsh" (for BASH SHell) and searched on [NPM](https://www.npmjs.org) and [Homebrew](http://braumeister.org/) and found it to be available. Also, [other Google results](https://encrypted.google.com/search?hl=en&q=bashsh) were completely unrelated.

Interestingly, via [Duckduckgo](https://duckduckgo.com/?q=bashsh) I found [this baby name website](http://hamariweb.com/names/muslim/arabic/boy/bashsh-meaning_460) which explained "Bashsh" to mean "Glad, Cheerful". I'm totally fine with that, as I'm glad and cheerful to now have a nicer language than plain Bash to work in. :)
