if executable('rg')
  " Use rg over grep or ag
  " --no-heading: Don't print file names above groups of matches.
  " --vimgrep: Output results in the 'file:line:col:match' format that Vim expects.
  " --smart-case: Search case-insensitively unless the pattern contains uppercase characters.
  " --hidden: Search hidden files and directories.
  " --glob '!{.git,node_modules}': Exclude common directories (you can customize this)
  set grepprg=rg\ --no-heading\ --vimgrep\ --smart-case\ --hidden\ --glob\ \!'{.git,node_modules}'

  " Set grepformat to parse ripgrep's output correctly
  " %f: file name
  " %l: line number
  " %c: column number (note: ripgrep provides 1-based column numbers which Vim understands)
  " %m: message (the matched text)
  set grepformat=%f:%l:%c:%m
endif
