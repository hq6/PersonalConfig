gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_colors" --type bool false
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/foreground_color" --type string "#000000000000"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/background_color" --type string "#FFFFFFFFDDDD"

# Ubuntu 15.10

link=/org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9
dconf write $link/use-theme-transparency false
dconf write $link/use-theme-colors false
dconf write $link/background-color "'rgb(255,255,255)'"
dconf write $link/foreground-color "'rgb(0,0,0)'"
