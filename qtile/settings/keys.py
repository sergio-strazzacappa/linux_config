from libqtile.config import Key
from libqtile.lazy import lazy

mod = 'mod4'

terminal = 'alacritty'
dmenu = 'dmenu_run -b -p Ejecutar: -l 5 -nb \'#111111\' -nf \'#FFFFFF\' -sb \'#5A4785\' -sf \'#FBB7FF\''
browser = 'firefox'
file_manager = 'thunar'
pdf_viewer = 'okular'
game = 'lutris'

keys = [
    # ---------- Window config ----------

    # Switch between windows
    Key([mod], 'h', lazy.layout.left()),
    Key([mod], 'l', lazy.layout.right()),
    Key([mod], 'j', lazy.layout.down()),
    Key([mod], 'k', lazy.layout.up()),

    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in columns layout will create new column.
    Key([mod, 'shift'], 'h', lazy.layout.shuffle_left()),
    Key([mod, 'shift'], 'l', lazy.layout.shuffle_right()),
    Key([mod, 'shift'], 'j', lazy.layout.shuffle_down()),
    Key([mod, 'shift'], 'k', lazy.layout.shuffle_up()),

    # Grow windows. If current window is on the edge of the screen and direction
    # will be to screen edge - window will shrink.
    Key([mod, 'control'], 'h', lazy.layout.grow_left()),
    Key([mod, 'control'], 'l', lazy.layout.grow_right()),
    Key([mod, 'control'], 'j', lazy.layout.grow_down()),
    Key([mod, 'control'], 'k', lazy.layout.grow_up()),
    Key([mod], 'n', lazy.layout.normalize()),

    # Toggle between different layouts 
    Key([mod], 'Tab', lazy.next_layout()),
    Key([mod, 'shift'], 'Tab', lazy.prev_layout()),
    
    # Kill window
    Key([mod], 'w', lazy.window.kill()),
    
    # Restart qtile config
    Key([mod, 'control'], 'r', lazy.reload_config()),
    
    # Quit qtile
    Key([mod, 'control'], 'q', lazy.shutdown()),

    # ---------- Apps config ----------

    # Terminal
    Key([mod], 'Return', lazy.spawn(terminal)),

    # Menu
    Key([mod], 'm', lazy.spawn(dmenu)),

    # Browser
    Key([mod], 'b', lazy.spawn(browser)),

    # File Manager
    Key([mod], 'f', lazy.spawn(file_manager)),

    # Redshift
    Key([mod], 'r', lazy.spawn('redshift -O 2600')),
    Key([mod, 'shift'], 'r', lazy.spawn('redshift -x')),

    # Screenshot
    Key([mod], 's', lazy.spawn('scrot')),
    Key([mod, 'shift'], 's', lazy.spawn('scrot -s')),

    # PDF Viewer
    Key([mod], 'p', lazy.spawn('okular')),
    
    # Gaming Platform
    Key([mod], 'l', lazy.spawn('lutris')),

    # ---------- Hardware config ----------

    # Volume
    Key([], 'XF86AudioLowerVolume', lazy.spawn('pamixer --decrease 5')),
    Key([], 'XF86AudioRaiseVolume', lazy.spawn('pamixer --increase 5')),
    Key([], 'XF86AudioMute', lazy.spawn('pamixer --toggle-mute')),
]
