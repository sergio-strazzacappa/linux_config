from libqtile import widget
from .theme import colors

def base(fg='text', bg='dark'):
    return {
            'foreground': colors[fg],
            'background': colors[bg]
            }       

def separator():
    return widget.Sep(**base(), linewidth=0, padding=5)

def icon(fg='text', bg='dark', fontsize=16, text='?'):
    return widget.TextBox(
            **base(fg, bg),
            fontsize = fontsize,
            text = text,
            padding = 3
    )

def powerline(fg='light', bg='dark'):
    return widget.TextBox(
            **base(fg, bg),
            text = '', # Icon: nf-oct-triangle_left
            fontsize = 37,
            padding = -3
    )

def workspaces():
    return [
            separator(),
            widget.GroupBox(
                **base(fg='light'),
                font = 'UbuntuMono Nerd Font',
                fontsize = 19,
                margin_y = 3,
                margin_x = 0,
                padding_y = 8,
                padding_x = 5,
                borderwidth = 1,
                active = colors['active'],
                inactive = colors['inactive'],
                rounded = False,
                highlight_metod = 'block',
                urgent_alert_method = 'block',
                urgent_border = colors['urgent'],
                this_current_screen_border = colors['focus'],
                this_screen_border = colors['grey'],
                other_current_screen_border = colors['dark'],
                other_screen_border = colors['dark'],
                disable_drag = True,
            ),

            separator(),

            widget.WindowName(**base(fg='focus'), fontsize=14, padding=5),

            separator()
        ]

primary_widgets = [
    *workspaces(),

    separator(),

    powerline('color4', 'dark'),

    icon(bg='color4', text=' '), # Icon: nf-fa-download

    widget.CheckUpdates(
        background = colors['color4'],
        colour_have_update = colors['text'],
        colour_have_no_update = colors['text'],
        no_update_string = '0',
        display_format = '{updates}',
        update_interval = 1800,
        custom_command = 'checkupdates'
    ),

    powerline('color3', 'color4'),

    icon(bg='color3', text=' '), # Icon: nf-fa-feed

    widget.Net(**base(bg='color3'), interface='wlp1s0'),

    powerline('color2', 'color3'),

	icon(bg='color2', text= ''), # Icon: nf-mdi-harddisk 

    widget.DF(**base(bg='color2'), visible_on_warn=False, format='{f}{m}/{s}{m}'),

    icon(bg='color2', text=''), # Icon: nf-mdi-memory  
    
    widget.Memory(**base(bg='color2'), format='{MemUsed:.0f}{mm}/{MemTotal:.0f}{mm}'),

    #widget.CurrentLayout(**base(bg='color2'), padding=5),

    powerline('color1', 'color2'),

    icon(bg='color1', fontsize=17, text=' '), # Icon: nf-mdi-calendar_clor

    widget.Clock(**base(bg='color1'), format='%a %d/%m/%y - %H:%M'),

    powerline('dark', 'color1'),

    # icon(bg='color3', fontsize=17, text=' '), # Icon: nf-fa-volume_up

    widget.Systray(background=colors['dark'], padding=5),

    widget.CurrentLayoutIcon(**base(bg='dark'), scale=0.65),
]

widget_defaults = dict(
        font="UbuntuMono Nerd Font Bold",
        fontsize=14,
        padding=1
)

extension_defaults = widget_defaults.copy()
