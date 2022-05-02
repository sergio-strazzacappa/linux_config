from libqtile.config import Group, Key, Match
from libqtile.lazy import lazy
from .keys import mod, keys

# Icons:
# nf-linux-archlinux
# nf-fa-firefox
# nf-dev-terminal
# nf-dev-vim
# nf-fa-hashtag
# nf-fa-music
# nf-custom-folder
# nf-fa-gamepad

groups = [
        Group('  ', layout='columns'),
        Group('  ', matches=[Match(wm_class='firefox')], layout='max'),
        Group('  ', layout='columns'),
        Group('  ', layout='columns'),
        Group('  ', matches=[Match(wm_class='discord'), Match(wm_class='telegram-desktop')], layout='max'),
        Group('  ', matches=[Match(wm_class='okular')], layout='columns'),
        Group('  ', matches=[Match(wm_class='thunar')]),
        Group('  ', matches=[Match(wm_class='lutris')], layout='max')
        ]

for i, group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend([
        # Switch to workspace N
        Key([mod], actual_key, lazy.group[group.name].toscreen()),
        # Send window to workspace N
        Key([mod, 'shift'], actual_key, lazy.window.togroup(group.name))
    ])
