
function is_installed() {
    return $(type $1 >/dev/null 2>&1)
}

function install_npm() {
    brew install "npm"
}

function install_qunit() {
    echo "Installing qunit"

    if ! is_installed npm; then
	install_npm
    fi
    
    npm install qunit -g
}


function make_qunit_available() {
    echo "JavaScript katas uses qunit"

    if ! is_installed qunit; then
	echo "Installing QUnit"
	install_qunit
    fi
}


make_qunit_available
