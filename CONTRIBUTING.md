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

The policy for testing is: There will be no version 1 without a full test suite!

I will probably make it self-hosting, using Bashsh-0 to test Bashsh-1. :)


Publishing a new release
------------------------

    npm version patch  # minor, major
    git push origin master --tags
    npm publish


Miscellaneous information about Bashsh
--------------------------------------

See [MISC.md](./MISC.md) if you want to know more about the motivation and name of this project.
