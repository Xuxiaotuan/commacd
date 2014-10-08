# commacd

A nifty `cd` alternative for the lazy ones (Bash 3+).

## Installation

```sh
curl https://github.com/shyiko/commacd/blob/master/commacd.bash -o ~/.commacd.bash && \
  echo "source ~/.commacd.bash" >> ~/.bashrc
```

## Usage

`commacd` introduces three aliases: `,`, `,,` and `,,,`:

```sh
~$ , des
  => cd Desktop

# move through multiple directories
~$ , /u/l/ce
  => cd /usr/local/Cellar

# allow me to choose directory in case of ambiguous pattern (= multiple choices)
~$ , d
  => 1 Desktop
     2 Downloads
     : <type index of the directory to cd into>

# given two directories jdk7 and jdk8 on the Desktop, cd into jdk8 without hitting 
# interactive mode (the one shown above)
~/github$ , ~/d/j*8
  => cd ~/Desktop/jdk8

# cd into directory having 'esk' somewhere in its name
~/github$ , ~/*esk
  => cd ~/Desktop

# go all the way up to the project root directory (in this case, the one that has .git in it)
~/github/lorem/src/public$ ,,
  => cd ~/github/lorem

# cd into to the first (closest) parent directory named g*
~/github/vimium/src/public$ ,, g
  => cd ~/github

# substitute jekyll with ghost
~/github/jekyll/test$ ,, jekyll ghost
  => cd ~/github/ghost/test

# jump to some other project in ~/github
~/github/rook/src/public$ ,,, m*binlog
  => cd ~/github/mysql-binlog-connector-java
```

As a bonus, all three aliases support `<Tab>` completion (try `, ~/des<Tab>`) and can combined with other tools (e.g. ``ls `, ~/des` ``). 

## Development

```sh
make # lint sources and run tests 
```

## License

[MIT License](http://opensource.org/licenses/mit-license.php)
