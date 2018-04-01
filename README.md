# My Dotfiles
## Use at your own risk
<sub><sup><sub><sup>I hope I didn't forget any files</sup></sub></sup></sub>


### i3-gaps
This config is for i3-gaps. 

I'm using [i3blocks](https://github.com/vivien/i3blocks) and [i3lock-fancy](https://github.com/meskarune/i3lock-fancy) instead of the defaults. I'm also using [rofi](https://github.com/DaveDavenport/rofi) instead of dmenu.

The [wallpaper.sh](.config/i3/wallpaper.sh) script chooses a random picture from ~/Pictures/Wallpapers, sets it as a wallpaper and generates a color theme. 

Using the Arc icon and gtk theme (the pywal generated gtk theme does not look very good with some of the wallpapers)


<sub>I use arch btw.</sub>


---

### Fonts
I use a few fonts in my config. The most important ones are:
* [San Francisco](https://github.com/supermarin/YosemiteSanFranciscoFont)
* [Source Code Pro for Powerline](https://github.com/powerline/fonts/tree/master/SourceCodePro)


Optionally, you can add:
* [Fontawesome 4](https://fontawesome.com/v4.7.0/) (For nice little pictures in your bar)
* [Sauce Code Pro](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro/Regular/complete) (Same as Source Code Pro for Powerline but with support for devicons and more)
* [Noto Emoji](https://github.com/googlei18n/noto-emoji/) (Very optional. Only install if you're bothered by emoticons not being displayed correctly)


You might have to look for alternative sources, if using these links does not work for you. (I had to use the aur version of Sauce Code Pro). 

Also, installing gnome fixed some issues with Source Code Pro overriding "System San Francisco Display" as system font.

---

### Neovim
Remove what you don't need, adapt to vim, don't use devicons if you don't have a [Nerd Font](https://github.com/ryanoasis/nerd-fonts).
The plugin manager is [vim-plug](https://github.com/junegunn/vim-plug).

---

#### A few resources I used to make my life easier
[i3 configuration](https://www.youtube.com/watch?v=j1I63wGcvU4)

[urxvt configuration](https://www.youtube.com/watch?v=_kjbj-Ez1vU&t=911s)

[Luke Smith](https://www.youtube.com/channel/UC2eYFnH61tmytImy1mTYvhA)

[tutoriaLinux](https://www.youtube.com/channel/UCvA_wgsX6eFAOXI8Rbg_WiQ)

[This neovim config](https://github.com/Optixal/neovim-init.vim)

[And this one](https://wwoods.github.io/2015/07/29/nvim-config/)
