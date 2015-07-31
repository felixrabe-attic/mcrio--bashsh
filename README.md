Bashsh
======

Improves your Bash scripts.


Installation via NPM
--------------------

    npm install -g bashsh


Installation via bpkg
---------------------

    bpkg install -g mcrio/bashsh


Usage
-----

The following shebang

    #!/usr/bin/env bashsh-0

gives you:

-   `set -e` by default:

        echo hello ; false ; echo world

    will only print `hello`.

-   `CMD` for showing executed commands in bold on stderr:

        CMD git status

-   `CMD_STR` prints the string in bold on stderr and runs it with `eval`:

        CMD_STR 'gitk --all &'

-   `ECHO` prints the string in bold on stderr:

        ECHO wget ... example.com
        wget --cookies=on --load-cookies wget-tmp/cookies.txt --keep-session-cookies --save-cookies wget-tmp/cookies.txt example.com

-   `MSG` prints a remark in bold on stderr, formatted as a comment:

        MSG hello world

    prints `# hello world`.

-   `READ_P` works like `read -p` but prints the first parameter using `MSG`:

        READ_P 'What is your name? ' your_name

-   `QUOTED` prints the given arguments in a way that is safe to pass to commands:

        echo "My arguments are: $(QUOTED "$@")"

You can find a few examples in the [examples](./examples) directory. Also, my [~/bin](https://github.com/felixrabe/bin) directory makes heavy use of this project.


Caveats / known limitations
---------------------------

You **cannot** just

    npm install bashsh

and then use

    #!/usr/bin/env ./node_modules/.bin/bashsh-0

as the path of the command supplied to `env` will be interpreted as relative to the working directory, not to the script's directory.


Working on Bashsh
-----------------

If you would like to work on Bashsh, [CONTRIBUTING.md](./CONTRIBUTING.md) should give you the most important information to get you started quickly.


License
-------

The MIT License (MIT)

Copyright (c) 2014 Felix Rabe

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
