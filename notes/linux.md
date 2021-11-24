# regex

- word boundaries
\b<string>\b
- non-boundaries
\B<string>\B

# vim

- expand window (e.g. help full-screen)
ctrl + w; o
- switch window
ctrl + w; w
- close window
ctrl + w; c

# git

- change name of default branch, update on local clones:
	git branch -m master main
	git fetch origin
	git branch -u origin/main main
	git remote set-head origin -a
- init gpg commit signing
	export GPG_TTY=$(tty) # should be in .zshenv
	git config user.name "dave-is-dave"
    git config user.email "bigbanana29@aol.com"
    gpg --list-secret-keys --keyid-format=long # sec rsa4096/<key ID>
    git config user.signingkey <key ID>
    git config commit.gpgsign true
- config global gitignore
	git config --global core.excludesfile ~/.config/gitignore_global

# misc

- show command terminal writes
strace -f -e write -o <output file> <command>

- show cursor command:
echo -e "\e[?25h"
- enable blinking command:
echo -e "\e[?12h"
- both:
echo -e "\e[?12;25h"
- disable blinking:
echo -e "\e[?12l"

note that esc \e can also be \x1b

- linux cursor escape sequence control https://linuxgazette.net/137/anonymous.html

function ranger () { command ranger --choosedir=$HOME/.config/ranger/.rangerdir "$@"; LASTDIR=`cat $HOME/.config/ranger/.rangerdir`; cd "$LASTDIR"; echo -e "\x1b[?12;25h"; }

                            vim                     ranger                  ranger + vim
wsl in cmd                  blinking                blinking                invisible
wsl in window terminal      visible no-blinking     visible no-blinking     invisible

---

Thanks @no1xsyzy! Your solution worked for me but I also noticed that when using wsl2 in windows terminal instead of command prompt that the cursor wouldn't blink after quitting either ranger, vim or vim within ranger as such:
```
                            vim                     ranger                  ranger + vim
wsl in cmd                  blinking                blinking                invisible
wsl in windows terminal     visible no-blinking     visible no-blinking     invisible
```
So I tried using "\x1b[?12;25h" _instead_ of "\e[?25h" in your ranger function which also resulted in revealing the cursor in cmd but also re-enabled blinking in windows terminal. I've set a similar function for vim so that cursor blinking is re-enabled in windows terminal.
```
# show cursor command:
echo -e "\e[?25h"
# enable blinking command:
echo -e "\x1b[?12;25h"
```

---

guicursor=n-v-c:block,o:hor50,i-ci:hor15,r-cr:hor30,sm:block
