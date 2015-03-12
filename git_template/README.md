Template dir to contain some simple AWS centric git hooks in every new repo I create

To use add the following to your git config (`~/.gitconfig`)


    [init]
      templatedir = /path/to/directory/.git_template

To prevent the hooks being added to every repo add the following to your global git ignore (`~/.gitignore_global`)


    .git/hooks/*
    .git/README.md

Note this probably needs improving as this will also stop you pulling down project hooks