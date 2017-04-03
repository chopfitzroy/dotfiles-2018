# Drop current command into default editor 
function edit_cmd --description 'Input command in external editor'
  set -l f (mktemp /tmp/fish.cmd.XXXXXXXX)
  if test -n "$f"
    set -l p (commandline -C)
    commandline -b > $f
    editor -c 'set ft=fish' $f
    commandline -r (more $f)
    commandline -C $p
    command rm $f
  end
end

# Transfer.sh
function transfer --description 'Upload a file to transfer.sh'
  if [ $argv[1] ]
    # write to output to tmpfile because of progress bar
    set -l tmpfile ( mktemp -t transferXXX )
    curl --progress-bar --upload-file $argv[1] https://transfer.sh/(basename $argv[1]) >> $tmpfile
    cat $tmpfile
    command rm -f $tmpfile
else
  echo 'usage: transfer FILE_TO_TRANSFER'
end
end

# Upload (transfer and copy)
function upload --description 'Upload a file and copy URL to clipboard'
  if [ $argv[1] ]
    transfer $argv[1] | ctc
end
end

# Configure keybindings
function fish_user_key_bindings
  bind \cf 'thefuck-command-line'  # Bind Ctrl+F to thefuck
  bind \ce 'edit_cmd' # Bind Ctrl+E to drop command into nvim
end
