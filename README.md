# md2html
Script to convert a github-flavored markdown file to html.

This work relies heavily on the excellent work done at [github-markdown-preview](https://github.com/dmarcotte/github-markdown-preview) which needs to be installed on top of ruby. For example in Ubuntu:

```
# install ruby
sudo apt-get install ruby-full
# install github-markdown-preview gem - may take some time
sudo gem install github-markdown-preview
```

# Usage

The intended workflow is described for Ubuntu 16.04 operating system. 

Modify it appropriately to be applicable to your setup and needs.

- Create a soft symbolic link for towards the location of the script and ```$HOME/.local/bin```. (This assumes that this directory is in your ```$PATH```.)<br>
``` ln -s /path/to/md2html.rb $HOME/.local/bin/md2html```
- In the terminal on the directory of the markdown file you want to convert type:<br>```md2html ./example.md```
- The resulting html file will appear in the same directory. Open it in your browser.

