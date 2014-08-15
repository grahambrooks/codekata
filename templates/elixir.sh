
readonly PROJECT_PATH=$1


function new_kata() {
    mix new $PROJECT_PATH --app kata

    echo "
all:
	mix test
" > $PROJECT_PATH/makefile
}

new_kata
