-- Hyprland default apps

TERMINAL = "foot"
FILE_MANAGER = "dolphin"
BROWSER = "firefox"
EDITOR = "gnome-text-editor --new-window"
CALCULATOR = "gnome-calculator"
SCREENSHOT = "hyprshot -m region --clipboard-only"
LAUNCHER = "foot --title fsel fsel --detach"
CLIPBOARD =
	"foot --title fsel-clip sh -c 'cliphist list | fsel --dmenu | cliphist decode | wl-copy' && wtype -M ctrl -k v -m ctrl"
VOLUME = "foot --title vol-mix wiremix"

-- Monitors
MONITOR1 = ""
MONITOR2 = ""
MONITOR3 = ""
PRIMARY_MONITOR = MONITOR1

-- Workspaces
NUM_WPM = 10 -- Number of workspaces per monitor (Max 10)
