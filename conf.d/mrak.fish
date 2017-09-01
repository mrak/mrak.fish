status --is-interactive; or exit

mesg n
set Z_DATA $XDG_DATA_HOME/z/data

eval (python -m virtualfish ^/dev/null)

[ -f ~/.asdf/completions/asdf.fish ]; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions/ ^/dev/null
[ -f ~/.asdf/asdf.fish ]; and source ~/.asdf/asdf.fish

# if the terminal supports it, set keyboard_transmit mode
# fixes st
if tput smkx ^/dev/null
    function mrak_disable_keypad_transmit --on-event fish_preexec
        tput rmkx ^/dev/null
    end

    function mrak_enable_keypad_transmit --on-event fish_postexec
        tput smkx ^/dev/null
    end
end

# colorscheme
set fish_color_user blue
set fish_color_host magenta
set fish_color_cwd green
set fish_color_autosuggestion 555
set fish_color_command 005fd7
set fish_color_comment 555
set fish_color_cwd green
set fish_color_cwd_root red
set fish_color_end 009900
set fish_color_error ff4444
set fish_color_escape --bold
set fish_color_history_current --bold
set fish_color_match green
set fish_color_normal normal
set fish_color_operator green
set fish_color_param 00afff
set fish_color_quote FFAA00
set fish_color_redirection af87ff
set fish_color_search_match bryellow --background=brblack
set fish_color_selection white --bold --background=brblack
set fish_color_valid_path --underline
