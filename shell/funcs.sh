function keyboard_backlight() {
  echo $1 | sudo tee /sys/class/leds/smc\:\:kbd_backlight/brightness
}

function screen_backlight() {
  echo $1 | sudo tee /sys/class/backlight/gmux_backlight/brightness
}

function config_dwm() {
  vim ~/.dwm/config.h
}

function rebuild_dwm() {
  cd ~/.dwm
  make
  sudo make install
}

function reload() {
  source ~/.bashrc 
}

function p() {
  ps aux | grep -i $1
}
