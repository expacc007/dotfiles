main () {
  if ! test -f $HOME/.actual-theme; then
    echo catppuccin > $HOME/.actual-theme
  fi
}

wall_catppuccin () {
  echo $HOME/.bspwm-dotfiles/.sample-wallpapers/catppuccin-techno.png
}

wall_tokyonight () {
  echo $HOME/.bspwm-dotfiles/.sample-wallpapers/tokyonight-techno.png
}

wall_gruvbox () {
  echo $HOME/.bspwm-dotfiles/.sample-wallpapers/gruvbox-city.png
}

wall_material_ocean () {
  echo $HOME/.bspwm-dotfiles/.sample-wallpapers/material-ocean.jpg
}

wall_onedark () {
  echo $HOME/.bspwm-dotfiles/.sample-wallpapers/onedark.png
}

wall_everforest () {
  echo $HOME/.bspwm-dotfiles/.sample-wallpapers/everforest.jpg
}

load_wallpaper () {
  theme=$(cat $HOME/.actual-theme)
  wall=$(wall_$theme)
  feh --bg-fill $wall
}

main