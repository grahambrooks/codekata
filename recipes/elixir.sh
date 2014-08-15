
function is_installed() {
    return $(type $1 >/dev/null 2>&1)
}

function install_elixir() {
    brew install "elixir"
}

function make_elixir_available() {
    if ! is_installed elixir; then
	echo "Installing Elixir"
	install_elixir
    fi
}

make_elixir_available
