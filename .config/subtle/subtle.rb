        # == Subtle Config {{{

    # == General options {{{

    set :step,              10
    set :border_snap,       10

    set :gravity,           :ct66
    set :tiling,            false
    set :honor_size_hints,  false
    set :urgent,            false
    set :urgent_dialogs,    false

    set :click_to_focus,    false
    set :skip_pointer_warp, false
    set :skip_urgent_warp,  false

    #}}}


    # == Panels {{{

    screen 1 do
      top     [ :views, :separator, :title, :spacer, :mpd, :battery, :clock2, :tray ]
      bottom  [ ]
    end
    #}}}


    # == Addons {{{

    begin
        require "#{ENV["HOME"]}/.local/share/subtle/addons/selector.rb"
        Subtle::Contrib::Selector.font = "xft:Ohsnap:pixelsize=80"
    rescue LoadError => error
        puts error
    end

    begin
        require "#{ENV["HOME"]}/.local/share/subtle/addons/positioner.rb"
        Subtle::Contrib::Positioner.font = "xft:Ohsnap:pixelsize=80"
    rescue LoadError => error
        puts error
    end

    # }}}


    # == Colors {{{

    background_1 =   "#151515"
    background_2 =   "#353535"

    color_above =    "#ebebeb"
    color_light =    "#C3143B"
    color_medium =   "#545454"
    color_dark =     "#303030"

    #}}}


    # == Styles {{{

    style :all do
      padding      2, 2, 2, 2
      margin       0, 0, 0, 0
      icon         color_light
      font         "xft:Ohsnap:pixelsize=8:antialias=false"
    end

    style :subtle do
      padding      0, 0, 0, 0
      margin       0, 0, 0, 0
      panel_top    background_1
      panel_bottom background_1
    end

    style :clients do
      padding      0, 0, 0, 0
      margin       4, 4, 4, 4
      active       color_above, 1
      inactive     background_2, 1
      width        60
    end

    style :title do
      padding      1, 4, 2, 4
      margin       0, 0, 0, 0
      foreground   color_above
      background   background_1
      font         "xft:Ohsnap:pixelsize=8:antialias=false"
    end

    style :sublets do
      padding      1, 2, 2, 4
      margin       0, 0, 0, 0
      foreground   color_light
      background   background_1
      icon         color_above
      font         "xft:Ohsnap:pixelsize=8:antialias=false"
    end

    style :separator do
      padding      1, 2, 2, 2
      margin       0, 0, 0, 0
      foreground   color_light
      background   background_1
      separator    "||"
      font         "xft:Ohsnap:pixelsize=8:antialias=false"
    end

    style :views do
      padding      1, 5, 2, 5
      margin       0, 0, 0, 0
      foreground   color_medium
      background   background_1
      icon         color_dark
      font         "xft:Ohsnap:pixelsize=6:antialias=false"

        style :urgent do
          padding       1, 5, 2, 5
          margin        0, 0, 0, 0
          foreground    color_light
          background    color_above
          icon          color_light
          font          "xft:Ohsnap:pixelsize=8:antialias=false"
        end

        style :occupied do
          padding       1, 5, 2, 5
          margin        0, 0, 0, 0
          foreground    color_above
          background    background_1
          icon          color_medium
          font          "xft:Ohsnap:pixelsize=6:antialias=false"
        end

        style :focus do
          padding       1, 5, 2, 5
          margin        0, 0, 0, 0
          foreground    color_above
          background    color_light
          icon          color_light
          font          "xft:Ohsnap:pixelsize=6:antialias=false"
        end
    end

    # }}}


    # == Gravities {{{

    # Top left
    gravity :tl_a1,     [   0,   0,  33,  33 ]
    gravity :tl_a2,     [   0,   0,  50,  33 ]
    gravity :tl_a3,     [   0,   0,  67,  33 ]

    gravity :tl_b1,     [   0,   0,  33,  50 ]
    gravity :tl_b2,     [   0,   0,  50,  50 ]
    gravity :tl_b3,     [   0,   0,  67,  50 ]

    gravity :tl_c1,     [   0,   0,  33,  67 ]
    gravity :tl_c2,     [   0,   0,  50,  67 ]
    gravity :tl_c3,     [   0,   0,  67,  67 ]

    # Top center
    gravity :tc_a1,     [   0,   0, 100,  50 ]
    gravity :tc_a2,     [   0,   0, 100,  67 ]
    gravity :tc_a3,     [   0,   0, 100,  33 ]

    gravity :tc_b1,     [  33,   0,  34,  33 ]
    gravity :tc_b2,     [  33,   0,  34,  50 ]
    gravity :tc_b3,     [  33,   0,  34,  67 ]

    # Top right
    gravity :tr_a1,     [  67,   0,  33,  33 ]
    gravity :tr_a2,     [  50,   0,  50,  33 ]
    gravity :tr_a3,     [  33,   0,  67,  33 ]

    gravity :tr_b1,     [  67,   0,  33,  50 ]
    gravity :tr_b2,     [  50,   0,  50,  50 ]
    gravity :tr_b3,     [  33,   0,  67,  50 ]

    gravity :tr_c1,     [  67,   0,  33,  67 ]
    gravity :tr_c2,     [  50,   0,  50,  67 ]
    gravity :tr_c3,     [  33,   0,  67,  67 ]

    # Left
    gravity :l_a1,      [   0,  33,  33,  34 ]
    gravity :l_a2,      [   0,  33,  50,  34 ]
    gravity :l_a3,      [   0,  33,  67,  34 ]

    gravity :l_b1,      [   0,   0,  33, 100 ]
    gravity :l_b2,      [   0,   0,  50, 100 ]
    gravity :l_b3,      [   0,   0,  67, 100 ]

    # Center
    gravity :ct,        [   0,   0, 100, 100 ]
    gravity :ct33,      [  33,  33,  34,  34 ]
    gravity :ct66,      [  25,  25,  50,  50 ], :vert
    gravity :ct40,      [  0,  33,  100,  34 ]

    # Right
    gravity :r_a1,      [  67,  33,  33,  34 ]
    gravity :r_a2,      [  50,  33,  50,  34 ]
    gravity :r_a3,      [  33,  33,  67,  34 ]

    gravity :r_b1,      [  67,   0,  33, 100 ]
    gravity :r_b2,      [  50,   0,  50, 100 ]
    gravity :r_b3,      [  33,   0,  67, 100 ]

    # Bottom left
    gravity :bl_a1,     [   0,  67,  33,  33 ]
    gravity :bl_a2,     [   0,  67,  50,  33 ]
    gravity :bl_a3,     [   0,  67,  67,  33 ]

    gravity :bl_b1,     [   0,  50,  33,  50 ]
    gravity :bl_b2,     [   0,  50,  50,  50 ]
    gravity :bl_b3,     [   0,  50,  67,  50 ]

    gravity :bl_c1,     [   0,  33,  33,  67 ]
    gravity :bl_c2,     [   0,  33,  50,  67 ]
    gravity :bl_c3,     [   0,  33,  67,  67 ]

    # Bottom center
    gravity :bc_a1,     [   0,  50, 100,  50 ]
    gravity :bc_a2,     [   0,  33, 100,  67 ]
    gravity :bc_a3,     [   0,  67, 100,  33 ]

    gravity :bc_b1,     [  33,  67,  34,  33 ]
    gravity :bc_b2,     [  33,  50,  34,  50 ]
    gravity :bc_b3,     [  33,  33,  34,  67 ]

    # Bottom right
    gravity :br_a1,     [  67,  67,  33,  33 ]
    gravity :br_a2,     [  50,  67,  50,  33 ]
    gravity :br_a3,     [  33,  67,  67,  33 ]

    gravity :br_b1,     [  67,  50,  33,  50 ]
    gravity :br_b2,     [  50,  50,  50,  50 ]
    gravity :br_b3,     [  33,  50,  67,  50 ]

    gravity :br_c1,     [  67,  33,  33,  67 ]
    gravity :br_c2,     [  50,  33,  50,  67 ]
    gravity :br_c3,     [  33,  33,  67,  67 ]

    # Special
    gravity :sp_br,     [  70,  85,  30,  15 ]
    gravity :sp_bl,     [   0,  85,  30,  15 ]
    gravity :sp_tr,     [  70,   0,  30,  15 ]
    gravity :sp_tl,     [   0,   0,  30,  15 ]

    # Gimp
    gravity :gimp_i,    [  10,   0,  80, 100 ]
    gravity :gimp_t,    [   0,   0,  10, 100 ]
    gravity :gimp_d,    [  90,   0,  10, 100 ]

    # }}}


    # == Grabs {{{

    # Cycle between given gravities
    grab "W-KP_7",      [ :tl_a1, :tl_a2, :tl_a3, :tl_b1, :tl_b2, :tl_b3, :tl_c1, :tl_c2, :tl_c3 ]
    grab "W-KP_8",      [ :tc_b1, :tc_b2, :tc_b3, :tc_a3, :tc_a1, :tc_a2                         ]
    grab "W-KP_9",      [ :tr_a1, :tr_a2, :tr_a3, :tr_b1, :tr_b2, :tr_b3, :tr_c1, :tr_c2, :tr_c3 ]

    grab "W-KP_4",      [ :l_a1,  :l_a2,  :l_a3,  :l_b1,  :l_b2,  :l_b3 ]
    grab "W-KP_5",      [ :ct33  ,  :ct66,  :ct, :ct40 ]
    grab "W-KP_6",      [ :r_a1,  :r_a2,  :r_a3,  :r_b1,  :r_b2,  :r_b3 ]

    grab "W-KP_1",      [ :bl_a1, :bl_a2, :bl_a3, :bl_b1, :bl_b2, :bl_b3, :bl_c1, :bl_c2, :bl_c3 ]
    grab "W-KP_2",      [ :bc_b1, :bc_b2, :bc_b3, :bc_a3, :bc_a1, :bc_a2                         ]
    grab "W-KP_3",      [ :br_a1, :br_a2, :br_a3, :br_b1, :br_b2, :br_b3, :br_c1, :br_c2, :br_c3 ]

    grab "W-KP_0",      [ :sp_br, :sp_bl, :sp_tr, :sp_tl ]

    # Laptop
    grab "W-C-a",       [ :tl_a1, :tl_a2, :tl_a3, :tl_b1, :tl_b2, :tl_b3, :tl_c1, :tl_c2, :tl_c3 ]
    grab "W-C-z",       [ :tc_b1, :tc_b2, :tc_b3, :tc_a3, :tc_a1, :tc_a2                         ]
    grab "W-C-e",       [ :tr_a1, :tr_a2, :tr_a3, :tr_b1, :tr_b2, :tr_b3, :tr_c1, :tr_c2, :tr_c3 ]

    grab "W-C-q",       [ :l_a1,  :l_a2,  :l_a3,  :l_b1,  :l_b2,  :l_b3 ]
    grab "W-C-s",       [ :ct33  ,  :ct66,  :ct, :ct40 ]
    grab "W-C-d",       [ :r_a1,  :r_a2,  :r_a3,  :r_b1,  :r_b2,  :r_b3 ]

    grab "W-C-w",       [ :bl_a1, :bl_a2, :bl_a3, :bl_b1, :bl_b2, :bl_b3, :bl_c1, :bl_c2, :bl_c3 ]
    grab "W-C-x",       [ :bc_b1, :bc_b2, :bc_b3, :bc_a3, :bc_a1, :bc_a2                         ]
    grab "W-C-c",       [ :br_a1, :br_a2, :br_a3, :br_b1, :br_b2, :br_b3, :br_c1, :br_c2, :br_c3 ]

    grab "W-C-comma",   [ :sp_br, :sp_bl, :sp_tr, :sp_tl ]

    # Naviguate through clients
    grab "A-Tab" do
       clients = Subtlext::Client.visible
       clients.last.instance_eval do
          focus
          raise
        end
    end

    # Scratchpad
    grab "W-Tab" do
       if (c = Subtlext::Client.first("scratchpad"))
         c.toggle_stick
         c.focus
         c.raise
         c.toggle_float
       elsif (c = Subtlext::Subtle.spawn("urxvtc_mod -name scratchpad -e tmux attach"))
         c.tags  = []
         c.flags = [ :stick ]
       end
    end

    # Go to next non-empty view
    grab "W-Prior" do
         vArr = Subtlext::View[:all];
         cindx = vArr.index(Subtlext::View.current);
        for i in 1..vArr.size do
         cV = vArr[(i + cindx) % vArr.size];
            if (!cV.clients.empty? && Subtlext::View.visible.index(cV) == nil) then
                cV.jump;
                break;
            end
        end
    end

    # Go to previous non-empty view
    grab "W-Next" do
         vArr = Subtlext::View[:all].reverse;
         cindx = vArr.index(Subtlext::View.current);
        for i in 1..vArr.size do
         cV = vArr[(i + cindx) % vArr.size];
            if (!cV.clients.empty? && Subtlext::View.visible.index(cV) == nil) then
                cV.jump;
                break;
            end
        end
    end

    # Scratchstack
    scratch_stack   = []
    scratch_current = 0
    grab "Home" do |c|
        unless scratch_stack.include?(c.win)
        scratch_stack << c.win
        c.tags = []
        c.toggle_stick if c.is_stick?
        end
    end
    grab "End" do |c|
        if scratch_stack.include?(c.win)
        c.retag
        scratch_stack.delete(c.win)
        end
    end
    grab "Menu" do
        if 0 < scratch_current
        cur_idx = scratch_stack.index(scratch_current)
        cur_client = Subtlext::Client[scratch_current]
        cur_client.toggle_stick
        if cur_idx == scratch_stack.size - 1
        scratch_current = 0
        return
        end
    idx = cur_idx + 1
        else
        idx = 0
        end
    cur = Subtlext::Client[scratch_stack[idx]]
    scratch_current = cur.win
    cur.toggle_stick
    end

    # Manually launch scratchpad
    grab "W-A-Tab" do
      c = Subtlext::Subtle.spawn("urxvtc_mod -name scratchpad -e tmux")
         c.tags  = []
         c.flags = [ :stick ]

    # Launch Selector
    grab "W-comma" do
        Subtle::Contrib::Selector.run
    end

    # Launch Positionner
    grab "W-semicolon" do
        Subtle::Contrib::Positioner.run
    end

    # Subtle actions
    grab "W-C-r",   :SubtleReload
    grab "W-A-r",   :SubtleRestart
    grab "W-A-q",   :SubtleQuit

    # View naviguation
    grab "W-1",     :ViewSwitch1
    grab "W-2",     :ViewSwitch2
    grab "W-3",     :ViewSwitch3
    grab "W-4",     :ViewSwitch4
    grab "KP_Add",  :ViewNext
    grab "KP_Subtract", :ViewPrev
    grab "Prior",   :ViewNext
    grab "Next",    :ViewPrev

    # Window actions
    grab "W-B1",    :WindowMove
    grab "W-Up",    :WindowMoveUp
    grab "W-Right", :WindowMoveRight
    grab "W-Down",  :WindowMoveDown
    grab "W-Left",  :WindowMoveLeft

    grab "W-B3",    :WindowResize
    grab "W-C-Up",  :WindowResizeUp
    grab "W-C-Right", :WindowResizeRight
    grab "W-C-Down",:WindowResizeDown
    grab "W-C-Left",:WindowResizeLeft

    grab "W-h",     :WindowLeft
    grab "W-j",     :WindowDown
    grab "W-k",     :WindowUp
    grab "W-l",     :WindowRight

    grab "W-r",     :WindowRaise
    grab "W-s",     :WindowLower
    grab "W-q",     :WindowKill
    grab "W-S-f",   :WindowFloat
    grab "W-S-d",   :WindowFull
    grab "W-S-s",   :WindowStick

    # Shortcuts
    grab "W-Return",             "urxvtc_mod"
    grab "W-C-Return",           "urxvtc_mod -e tmux attach"
    grab "W-S-Tab",              "pkill tmux"
    grab "W-space",              'dmenu_run -nb "#151515" -nf "#545454" -sb "#C3143B" -sf "#DDE2D8" -p "run:" -i'
    grab "W-w",                  "iceweasel"
    grab "W-c",                  "urxvtc_mod -name wcalc -e wcalc"
    grab "W-f",                  "urxvtc_mod -name ranger -e ranger"
    grab "W-t",                  "urxvtc_mod -name newsbeuter -e newsbeuter"
    grab "W-n",                  "urxvtc_mod -name ncmpcpp -e ncmpcpp"
    grab "W-v",                  "urxvtc_mod -name weechat -e weechat-curses"
    grab "W-b",                  "urxvtc_mod -name rtorrent -e rtorrent"
    grab "W-m",                  "urxvtc_mod -name mutt -e mutt"
    grab "W-g",                  "magnet"
    grab "W-x",                  "i3lock -udc 000000"
    grab "W-h",				     "urxvtc_mod -name htop -e htop"
    grab "C-t",                  "iceweasel ~/Documents/.start/index.html && subtler -co iceweasel"
    grab "W-C-f",                "thunar"

    grab "XF86TouchpadToggle",   "touchpad_toggle"
    grab "XF86MonBrightnessDown","xbacklight -dec 10"
    grab "W-XF86MonBrightnessDown","xbacklight -set 0"
    grab "XF86MonBrightnessUp",  "xbacklight -inc 10"
    grab "W-XF86MonBrightnessUp","xbacklight -set 100"
    grab "W-F7",                 "eject"

    grab "XF86AudioPlay",        "ncmpcpp toggle"
    grab "XF86AudioPrev",        "ncmpcpp prev"
    grab "XF86AudioNext",        "ncmpcpp next"
    grab "XF86AudioMute",        "amixer set Master toggle"
    grab "W-XF86AudioMute",       "amixer set Master 100%+ unmute"
    grab "XF86AudioLowerVolume", "amixer set Master 5%- unmute"
    grab "XF86AudioRaiseVolume", "amixer set Master 5%+ unmute"

    grab "Print",                "scrotd 0"
    grab "C-Print",              "scrotd 5"

    # == Tags {{{

    # Simple tags
    tag "terminal", "urxvt|urxvtc|xterm|terminator"
    tag "web",      "idwb|luakitceweasel|midori|chromium|icedove|hotot|pidgin"
    tag "media",    "easytag|sonata|comix|inkscape|vlc|gnome-mplayer|libreoffice|zathura|epdfview|audacity"
    tag "systeme",  "thunar|gtk2fontsel|lxappearance|geany|nitrogen|virtualbox|file-roller|gparted|feh|display|bleachbit"

    # Placement
    tag "web_full" do
      match "icedove|iceweasel|chromium|midori"
      gravity :ct
    end

    tag "media_full" do
      match "comix|inkscape|libreoffice|zathura|audacity|easytag"
      gravity :ct
    end

    # Apps definition
    tag "terms" do
      match "urxvtc"
      exclude :instance => "scratchpad|htop|cli_browser|newsbeuter|mutt|wcalc|ranger|weechat|ncmpcpp|rtorrent"
    end

    tag "calc" do
      match :instance => "wcalc"
      gravity :br_a1
      stick true
    end

    tag "scratchpad" do
      match :instance => "scratchpad|htop"
      gravity :ct33
      stick true
      urgent true
    end

    tag "cli_browser" do
      match :instance => "lynx|elinks|w3m"
      gravity :ct
    end

    tag "torrent" do
      match :instance => "rtorrent"
      gravity :bl_a1
    end

#    tag "mails" do
#      match :instance => "newsbeuter|mutt"
#     end

    tag "newsbeuter" do
      match :instance => "newsbeuter"
      gravity :tc_a1
    end

    tag "mutt" do
      match :instance => "mutt"
      gravity :bc_a1
    end

    tag "flash" do
      match "<unknown>|plugin-container|exe|operapluginwrapper|npviewer.bin"
    end

    tag "music" do
      match :instance => "ncmpcpp"
    end

    tag "chat" do
      match :instance => "weechat|irssi"
    end

    tag "files" do
      match :instance => "ranger"
    end

    # Modes
    tag "stick" do
      match "mplayer|vlc"
      stick true
    end

    tag "float" do
      match "mplayer|nitrogen|file-roller|display|feh"
      float true
    end

    tag "fixed" do
      match "display|feh|gimp_*"
      fixed true
    end

    tag "borderless" do
      match "display|evince|epdfview"
      type :desktop
      borderless true
    end

    tag "urgent" do
      match "feh|display|file-roller"
      match :instance => "wcalc"
      urgent true
    end

    tag "full" do
      match "epdfview|evince"
      full true
    end

    tag "resize" do
      match "vlc|mplayer|virtualbox"
      resize true
    end

    # Gimp
    tag "gimp_image" do
      match   :role => "gimp-image-window"
      gravity :gimp_i
    end

    tag "gimp_toolbox" do
      match   :role => "gimp-toolbox$"
      gravity :gimp_t
    end

    tag "gimp_dock" do
      match   :role => "gimp-dock"
      gravity :gimp_d
    end

    tag "gimp_scum" do
      match   :role => "gimp-.*|screenshot"
    end

    #}}}


    # == Views {{{

    view "term" do
      match "terms|gimp_*|default"
    end

    view "web" do
      match "newsbeuter|mutt|web|mail|cli_browser|torrent|flash"
    end

    view "media" do
      match "media|music|chat"
    end

    view "syst" do
      match "systeme|files"
    end

     #}}}


    # == Sublets {{{

    sublet :mpd do
      format_string "%artist% %title%"
      show_icons    false
      show_colors   true
      show_pause    true
      artist_color  color_medium
      title_color   color_light
      pause_color   color_medium
      stop_color    color_medium
      stop_text     "Stop"
      pause_text    "Pause"
      not_running_text ""
    end

    sublet :clock2 do
      interval       30
      time_format    "%H:%M"
      time_color     color_above
      date_format    ""
    end

    # }}}


    # == Hooks {{{

    # Autostart
    on :start do
      Subtlext::Subtle.spawn "sh ~/.fehbg"
      Subtlext::Subtle.spawn "mpd"
      Subtlext::Subtle.spawn "xbacklight -set 5"
      Subtlext::Subtle.spawn "compton -CGbc -t -8 -l -9 -r 6 -o 0.7 -m 1.0"
      Subtlext::Subtle.spawn "xautolock -time 8 -locker 'i3lock -udc 000000'"
      Subtlext::Subtle.spawn "sleep 2s && test_torrent"
      Subtlext::Subtle.spawn "syndaemon -K -i 1 -d"
      Subtlext::Subtle.spawn "easystroke"
      Subtlext::Subtle.spawn "firefox-sync"
      Subtlext::Subtle.spawn "gnome-keyring-daemon --start --components=pkcs11"
    end

   # Pre-load scratchpad
    on :start do
      c = Subtlext::Subtle.spawn("urxvtc_mod -name scratchpad -e tmux")
         c.tags  = []
         c.flags = [ :stick ]
    end

    # Client autofocus
    on :client_create do |c|
      c.views.first.jump
      c.focus
      c.raise
    end

    #}}}


        #}}}
