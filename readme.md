# codekata

codekata makes doing coding katas easier and more fun. At its basic
level the codekata command line utility makes setting up, executing
and learning from coding exercises more fun and effective.


## Dependencies

Currently codekata assumes that
[lazybuilder](https://github.com/grahambrooks/lazybuilder) is
installed. Lazybuilder is used to run the unit tests for the kata. If
it is not installed the *codekata* command will fail in the last step
and you will need to run make on the command line to run the tests.

Each language has its own dependencies (runtime and test
framework). Until they get documented please take a look at the
template and recipes for dependencies.


## Installation

	wget https://raw.githubusercontent.com/grahambrooks/codekata/master/scripts/install -O - | sh

