# -----------------------------------------------------
# colormap
# -----------------------------------------------------
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

# -----------------------------------------------------
# window title
# -----------------------------------------------------
function set_win_title(){
    echo -ne "\033]0; msi@localhost: $PWD \007"
}
precmd_functions+=(set_win_title)

# -----------------------------------------------------
# compress img
# -----------------------------------------------------
compress_media() {
    if [[ $# -lt 2 ]]; then
        echo "Usage: compress_media <input_file> <output_file> [bitrate/quality]"
        echo "Example: compress_media input.mp4 output.mp4 2M"
        return 1
    fi

    local input_file="$1"
    local output_file="$2"
    local bitrate_or_quality="${3:-2M}" # Default bitrate is 2M if not specified

    if [[ ! -f "$input_file" ]]; then
        echo "Error: Input file '$input_file' not found!"
        return 1
    fi

    echo "Compressing '$input_file' to '$output_file' with bitrate/quality: $bitrate_or_quality..."
    
    ffmpeg -i "$input_file" -b:v "$bitrate_or_quality" -b:a 128k "$output_file" -y

    if [[ $? -eq 0 ]]; then
        echo "Compression successful! File saved as '$output_file'."
    else
        echo "Compression failed!"
    fi
}
# compress_media input.mp4 output.mp4 1M

# -----------------------------------------------------
# convert file
# -----------------------------------------------------
convert_webp() {
  for i in *
  do
  if [[ "${i##*.}" == "webp" ]]; then
      echo "WEBP FILE => $i"
      # show filename
      filename="${i%.*}"
      # show Extension
      extension="${i##*.}"
      ## webp converter
      ffmpeg -i "$filename" "$filename.png"
    fi
  done
}

# -----------------------------------------------------
# open new file
# -----------------------------------------------------
vn(){
  ov  # open vault
  local filename="$1"
  if [[ -z "$filename" ]]; then
    echo "Usage: vn <filename>"
    return 1
  fi
  #use your own path <filepath>
  nvim "00_inbox/${filename}.md" # enter file-name and directly start writing
}

# -----------------------------------------------------
# gsw
# -----------------------------------------------------
function gsw() {
    local branch=$1
    if [ -z "$branch" ]; then
        echo "Usage: gsw <branch_name>"
        return 1
    fi
    git checkout $branch
    if [ $? -eq 0 ]; then
        echo "Switched to branch $branch"
    else
        echo "Failed to switch branch"
    fi
}

# -----------------------------------------------------
# Backup
# -----------------------------------------------------
# zsh backup
function backup-zsh() {
    local source_dir="$HOME/.zsh"
    local dest_dir="$HOME/backup/zsh/$(date +%d-%m-%Y)"
    # Check if source directory exists
    if [[ ! -d "$source_dir" ]]; then
        echo "Source directory '$source_dir' does not exist."
        return 1
    fi
    # Check if destination directory exists, if not create it
    if [[ ! -d "$dest_dir" ]]; then
        echo "Destination directory '$dest_dir' does not exist. Creating it."
        mkdir -p "$dest_dir"
    fi
    # Copy files from source to destination
    cp -r "$source_dir/"* "$dest_dir/"
    echo "Files copied from '$source_dir' to '$dest_dir'."
}

# home dotfiles backup
function backup-confi() {
    local p10k="$HOME/.p10k.zsh"
    local bashrc="$HOME/.bashrc"
    local profi="$HOME/.profile"
    local tmu="$HOME/.tmux.conf"
    local wezter="$HOME/.wezterm.lua"
    local zprofi="$HOME/.zprofile"
    local zhistory="$HOME/.zsh_history"
    local dest_dir="$HOME/backup/home/$(date +%d-%m-%Y)/"
    # Check if source directory exists
    # Check if destination directory exists, if not create it
    if [[ ! -d "$dest_dir" ]]; then
        echo "Destination directory '$dest_dir' does not exist. Creating it."
        mkdir -p "$dest_dir"
    fi
    # Copy files from source to destination
    cp "$p10k"* "$dest_dir/"
    echo "Files copied from '$p10k' to '$dest_dir'."
    cp "$bashrc"* "$dest_dir/"
    echo "Files copied from '$bashrc' to '$dest_dir'."
    cp "$profi"* "$dest_dir/"
    echo "Files copied from '$profi' to '$dest_dir'."
    cp "$tmu"* "$dest_dir/"
    echo "Files copied from '$tmu' to '$dest_dir'."
    cp "$wezter"* "$dest_dir/"
    echo "Files copied from '$wezter' to '$dest_dir'."
    cp "$zprofi"* "$dest_dir/"
    echo "Files copied from '$zprofi' to '$dest_dir'."
    cp "$zhistory"* "$dest_dir/"
    echo "Files copied from '$zhistory' to '$dest_dir'."

}

# backup .configs
function backup-configs() {
    local co="$HOME/.config/Code/User/settings.json"
    local autos="$HOME/.config/autostart"
    local neo="$HOME/.config/neofetch/config.conf"
    local powersh="$HOME/.config/powershell/Microsoft.PowerShell_profile.ps1"
    local sub_text_t1="$HOME/.config/sublime-text/Packages/Aura.tmTheme"
    local sub_text_t2="$HOME/.config/sublime-text/Packages/Dracula.tmTheme"
    local sub_text_t3="$HOME/.config/sublime-text/Packages/tokyonight.tmTheme"
    local sub_text_user="$HOME/.config/sublime-text/Packages/Preferences.sublime-settings"
    local starsh="$HOME/.config/starship.toml"
    local dest_dir="$HOME/backup/configs/$(date +%d-%m-%Y)/"
    # Check if source directory exists
    # Check if destination directory exists, if not create it
    if [[ ! -d "$dest_dir" ]]; then
        echo "Destination directory '$dest_dir' does not exist. Creating it."
        mkdir -p "$dest_dir"
    fi
    # Copy files from source to destination
    mkdir $dest_dir/Code/
    mkdir $dest_dir/Code/User/
    cp "$co"* "$dest_dir/Code/User/"
    echo "Files copied from '$co' to '$dest_dir'."
    mkdir $dest_dir/autostart/
    cp "$autos/"* "$dest_dir/autostart/"
    echo "Files copied from '$autos' to '$dest_dir'."
    mkdir $dest_dir/neofetch
    cp "$neo"* "$dest_dir/neofetch"
    echo "Files copied from '$neo' to '$dest_dir'."
    mkdir $dest_dir/powershell/
    cp "$powersh"* "$dest_dir/powershell"
    echo "Files copied from '$powersh' to '$dest_dir'."
    mkdir $dest_dir/sublime-text/
    mkdir $dest_dir/sublime-text/Packages/
    cp "$sub_text_t1"* "$dest_dir/sublime-text/Packages/"
    echo "Files copied from '$sub_text_t1' to '$dest_dir'."
    cp "$sub_text_t2"* "$dest_dir/sublime-text/Packages/"
    echo "Files copied from '$sub_text_t2' to '$dest_dir'."
    cp "$sub_text_t3"* "$dest_dir/sublime-text/Packages/"
    echo "Files copied from '$sub_text_t3' to '$dest_dir'."
    mkdir $dest_dir/sublime-text/Packages/User
    cp "$sub_text_user"* "$dest_dir/sublime-text/Packages/User/"
    cp "$sub_text_user"* "$dest_dir/"
    echo "Files copied from '$sub_text_user' to '$dest_dir'."
    cp "$starsh"* "$dest_dir/"
    echo "Files copied from '$starsh' to '$dest_dir'."
}

# vscode-extensions backup
function vscodebackup() {
    local source_dir="$HOME/.vscode"
    local dest_dir="$HOME/backup/vscode/$(date +%d-%m-%Y)"
    # Check if source directory exists
    # Check if destination directory exists, if not create it
    if [[ ! -d "$dest_dir" ]]; then
        echo "Destination directory '$dest_dir' does not exist. Creating it."
        mkdir -p "$dest_dir"
    fi
    # Copy files from source to destination
    cp -r "$source_dir" "$dest_dir/"
    echo "Files copied from '$source_dir' to '$dest_dir'."
}