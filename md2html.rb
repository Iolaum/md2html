#!/usr/bin/env ruby

# Reads a github flavored markdown file and renders it into an html file
# Params:
# +input_file+:: command line argument when invoking the script specifying the file path.
#
# Note: Doesn't take advantage of gems ability to refresh the output.
  
# Load required gems
require 'github-markdown-preview'

print "Reading markdown file: "
# take file path argument from command line
puts ARGV[0]
inpfile = ARGV[0]

# Split at last . in the string!
# https://stackoverflow.com/a/1847212/1904901
file1, match1, suffix1 = inpfile.rpartition('.')

# Create Output file path.
outfile = file1 + ".html"

# Use github-markdown-preview to perform the conversion
preview = GithubMarkdownPreview::HtmlPreview.new(inpfile, {
    :delete_on_exit => false, # delete the preview when the program exits
    :comment_mode => false,   # render using the rules for Github comments/issues
    :preview_file => outfile  # write preview to the given filename,
                              # rather than the default 'source_file.md.html'
})

puts 'Sucessfully converted markdown file to html!'

