# matrix Todo
New Void Linux install, yeah babyyyyyy!

## Must-haves
[x] Setup sway and a graphical environment
	- Install important applications and setup a productive development and user environment
		[x] Kitty / nice terminal app
		[x] Firefox
		[x] VS Code
		[x] neovim

- Setup bar
	- Show battery
	- Temps?
	- Weather?

- Passwords
	- What to do about em

- Startup
	[x] sudo rfkill unblock wlan
	- start sway
	- Start firefox, weechat, terminal on startup. Maybe.
	- Start specific applications in specific workspaces

- Install terminal applications
	[x] Ranger
	- z
	- other helpful terminal utilities
	- aerc email client by Drew Devault
	- bonsai.sh
		https://gitlab.com/jallbrit/bonsai.sh

- Misc configuration
	- Get alacritty to respect ctrl+backspace
	[x] Make a `.env` file for setting ENV variables
		[x] Make a ~/.bin so I can create my own commands
	[x] Caps lock to escape (can be done in sway config I believe)
	- Ensure WiFi automatically connects and works (rfkill unblock wlan should do the trick)
		- Setup Eduroam connection for university

[x] Backup dotfiles in GitHub repo
	- It would be very cool to have bootstrapping instructions to recreate this install of Void Linux + bells and whistles

- Setup flux-like gamma / screen autodimming and warming at night
	- clight?

- Setup auto-shutdown at 10:15

- SSD health: trim regularly

## Nice-to-haves
- Setup laptop hotkeys for brightening/dimming screen and increasing/decreasing audio volume
	- Brightness:
		- `sudo light -U 20` decreases backlight a bit
		- `sudo light -A 20` decreases backlight a bit
- mako for notifications on Sway
- Rice sway
- Bootup
	- Optimise boot speed 
		- Remove GRUB 5 second wait
	- Setup Plymouth
		- Implment Arch's silent boot procedure
	- Libreboot??

- Install a cursor-hide-after-inactivity application
- Fine-tune fonts
- Optimise power usage
	- make powertop tunables persist through reboots

- Install brow.sh browser! Super cool!

# WiFi connections
wpa-supplicant does the connections based on a wpa-supplicant.conf file in /etc/wpa-supplicant/... .

It looks like adding a new WiFi connection must be done by editing this file, using wpa\_passphrase if it is WPA-PSK.

There is a wpa-supplicant runit service -- I'm not sure exactly what it does but it seems to be helpful -- see below about rfkill needing to unblock wlan: after this is unblocked a WiFi connection is automatically made -- I assume this is the wpa-supplicant service at work.

## No WiFi 'cos RF-kill is blocking the device
Run
```bash
sudo rfkill unblock wlan
```
the it seems to automatically turn itself on and connect!

