all: lint test

lint:
	test -s `which shellcheck` || { echo "shellcheck (https://github.com/koalaman/shellcheck) wasn't found on the PATH. Please install it and try again."; exit 1; }
	shellcheck -s bash -e SC1117,SC2206,SC2207,SC2128,SC2162,SC2178 -f gcc commacd.sh

test:
	test -s `which shpec` || { echo "shpec (https://github.com/rylnd/shpec) wasn't found on the PATH. Please install it and try again"; exit 1; }
	bash -i -c "shpec"
