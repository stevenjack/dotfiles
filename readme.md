# Steve's dotfiles.

This repo contains my personal dotfiles and are heavily based on [paul](https://github.com/paulirish/dotfiles/) and [mathias](https://github.com/mathiasbynens/dotfiles/)'s.

## Some differences

* Browserstack shortcuts which will launch the service and automatically load up a specific OS/Browser pair with your URL. e.g `win7ie8 "http://google.com"`, `ipad3 "http://google.com"`, `ipad3ios6 "http://google.com"`,`androidnexus "http://google.com"` etc. If you would prefer to work locally similarly use `ipad3 "http://localhost:3000"`
* Dropbox via the command-line support `dropbox upload {localFile} {remoteFile}`, `dropbox download {remoteFile} {localFile}`, `dropbox list` etc.
* Browser and npm aliases e.g `chrome`, `safari`, `opera`, `firefox`, `chromium` and others.
* Launch all browsers with a specific URL `browsers "http://google.com"`
* My Sublime Text build files (Grunt, Yeoman, r.js, SASS, Less and a few others included)
* [@cowboy](http://github.com/cowboy)'s GitHub Pull Request Helper

## install the neccessary apps

My basic setup is captured in `install-deps.sh` which adds homebrew, z, nave, etc.

## private config

Toss it into a file called `.extra` which you do not commit to this repo and just keep in your `~/`

I do something nice with my `PATH` there:

```shell
# PATH like a bawss
      PATH=/opt/local/bin
PATH=$PATH:/opt/local/sbin
PATH=$PATH:/bin
PATH=$PATH:~/.rvm/bin
PATH=$PATH:~/code/git-friendly
# ...

export PATH
```

## Syntax highlighting

…is really important. even for these files.

add the below to this file: `~/Library/Application Support/Sublime Text 2/Packages/ShellScript/Shell-Unix-Generic.tmLanguage`

```xml
<string>.aliases</string>
<string>.bash_profile</string>
<string>.bash_prompt</string>
<string>.bashrc</string>
<string>.brew</string>
<string>.exports</string>
<string>.functions</string>
<string>.git</string>
<string>.gitattributes</string>
<string>.gitconfig</string>
<string>.gitignore</string>
<string>.inputrc</string>
<string>.osx</string>
<string>.vim</string>
<string>.vimrc</string>
```



### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

## Similar projects

I recommend getting a [`.jshintrc`](https://github.com/jshint/node-jshint/blob/master/.jshintrc) and [`.editorconfig`](http://editorconfig.org/) defined for all your projects.





## overview of files

####  Automatic config
* `.ackrc` - for ack (better than grep)
* `.vimrc`, `.vim` - vim config, obv.

#### shell environement
* `.aliases`
* `.bash_profile`
* `.bash_prompt`
* `.bashrc`
* `.exports`
* `.functions`
* `.extra` - not included, explained above

#### manual run
* `install-deps.sh` - random apps i need installed
* `.osx` - run on a fresh osx machine
* `.brew` - homebrew intialization

#### git, brah
* `.git`
* `.gitattributes`
* `.gitconfig`
* `.gitignore`

* `.inputrc` - config for bash readline


## Installation

```bash
git clone https://github.com/addyosmani/dotfiles.git && cd dotfiles && ./sync.sh
```

To update later on, just run the sync again.
