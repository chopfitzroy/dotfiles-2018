# Drop current command into default editor
# @TODO this dosen't work with editors like nano so insteam of using editor I need to check for the nvim lib
# Only if nvim exists should this execute
function edit_cmd --description 'Input command in external editor'
  set -l f (mktemp /tmp/fish.cmd.XXXXXXXX)
  if test -n "$f"
    set -l p (commandline -C)
    commandline -b > $f
    nvim -c 'set ft=fish' $f
    commandline -r (more $f)
    commandline -C $p
    command rm $f
  end
end

# Configure keybindings
function fish_user_key_bindings
  bind \ce 'edit_cmd' # Bind Ctrl+E to drop command into nvim
end
