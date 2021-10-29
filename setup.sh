: '
New Setup Installation Scripts
    * Firefox
    * vim
    * gvim
    * nnn
    * Fonts

Vim Setup
---------
    1. gvim setup, vimrc copy
    2. Setup Vundle automatically

Desktop wallpaper script
------------------------

Keyboard shortcuts
------------------
    1. Terminal
    2. GVim
'

echo '[Script] Updating system before installs'
sudo dnf update

echo '[Script] Git credential setup'

echo '[Script] Copying dotfiles.'
# Dotfiles
cp .vimrc ~/.vimrc
cp .bashrc ~/.bashrc
echo '[Script] Copied dotfiles.'


echo '[Script] Entering sudo mode.'
su -

: '
Vim ecosystem
-------------
'

# Vim
# ---
echo '[Script] Installing Vim etc.'

# Vundle (vim)
echo '[Script] Clone Vundle'
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo '[Script] Cloned Vundle'

# Common needed
sudo dnf install vim nnn vim-X11 -y

: '
Developer Tools
---------------
'

echo '[Script] Installing python devel libs'
sudo dnf install python-devel python3-devel -y


: '
System Packages
---------------
'

# Configure dnf
sudo echo 'fastestmirror=true' >> /etc/dnf/dnf.conf # quik mafs
sudo echo 'deltarpm=true' >> /etc/dnf/dnf.conf # quik mafs
sudo echo 'max_parallel_downloads=10' >> /etc/dnf/dnf.conf # quik mafs
sudo dnf clean all

# GNOME Tweak Tool
sudo dnf install gnome-tweak-tool -y
sudo dnf install gnome-tweaks -y 
sudo dnf install gnome-extensions-app -y


: '
Media and Entertainment
-----------------------
'

echo '[Script] Beginning installation for Multimedia'

sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install lame\* --exclude=lame-devel -y
sudo dnf group upgrade --with-optional Multimedia -y

sudo dnf install vlc -y

: '
Codecs
------
'

sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y


