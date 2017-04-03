# Disable fish start up message
set -g -x fish_greeting ''

# Add additional folders to PATH
set -g -x PATH /usr/local/bin $PATH
set -g -x PATH ~/.node_modules/bin $PATH
set -g -x PATH ~/.cargo/bin $PATH

# Use rg as the default command for listing files in fzf
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
set -g -x FZF_DEFAULT_COMMAND 'rg --files --no-ignore --hidden --follow --glob "!.git/*"'
