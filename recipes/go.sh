
function is_installed() {
    return $(type $1 >/dev/null 2>&1)
}

function install_golang() {
    brew install "go"
}

function make_golang_available() {
    if ! is_installed elixir; then
	echo "Installing Elixir"
	install_elixir
    fi
}

make_golang_available
