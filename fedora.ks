#version=F31

# URLs and REPOs
url --mirrorlist="https://mirrors.fedoraproject.org/mirrorlist?repo=fedora-31&arch=x86_64"
repo --name=fedora-updates --mirrorlist="https://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f31&arch=x86_64" --cost=0
# RPMFusion Free
repo --name=rpmfusion-free --mirrorlist="https://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-31&arch=x86_64" --includepkgs=rpmfusion-free-release
repo --name=rpmfusion-free-updates --mirrorlist="https://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-31&arch=x86_64" --cost=0
repo --name=rpmfusion-free-tainted --mirrorlist="https://mirrors.rpmfusion.org/metalink?repo=free-fedora-tainted-31&arch=x86_64"
# RPMFusion NonFree
repo --name=rpmfusion-nonfree --mirrorlist="https://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-31&arch=x86_64" --includepkgs=rpmfusion-nonfree-release
repo --name=rpmfusion-nonfree-updates --mirrorlist="https://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-updates-released-31&arch=x86_64" --cost=0
repo --name=rpmfusion-nonfree-tainted --mirrorlist="https://mirrors.rpmfusion.org/metalink?repo=nonfree-fedora-tainted-31&arch=x86_64"
# Negativo17 NVIDIA/CUDA
repo --name=negativo17 --baseurl="https://negativo17.org/repos/nvidia/fedora-31/x86_64/"
repo --name=google-chrome --baseurl="http://dl.google.com/linux/chrome/rpm/stable/x86_64"
# Secure Messenger
repo --name=keybase --baseurl="http://prerelease.keybase.io/rpm/x86_64"
repo --name=riot --baseurl="https://copr-be.cloud.fedoraproject.org/results/taw/Riot/fedora-31-x86_64/"

# Use graphical install
graphical
# Keyboard layouts
keyboard --xlayouts='us (mac)','de (mac)'
# System language
lang pl_PL.UTF-8

# Network information
network  --bootproto=dhcp --device=enp3s0 --ipv6=auto --activate
network  --hostname=fedora31
# X Window System configuration information
# xconfig --defaultdesktop GNOME --startxonboot
# System services
services --enabled=chronyd,sshd

# System timezone
timezone Europe/Warsaw --isUtc --ntpservers=0.pool.ntp.org,1.pool.ntp.org,2.pool.ntp.org,3.pool.ntp.org

# User configuration
# user --groups=wheel --name=fedora --password=PASSWD --iscrypted --gecos="fedora"
# Root password
# ``python -c 'import crypt; print(crypt.crypt("My Password", "$6$My Salt"))'``
# rootpw --iscrypted PASSWD

# SSH Keys (Ed25519 / RSA 4096)
# sshkey --username fedora "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM2uNvCh4aHbk8v/Fty9inxQLpda4z7Vb16Dbn24zTfm"
# sshkey --username root "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM2uNvCh4aHbk8v/Fty9inxQLpda4z7Vb16Dbn24zTfm"
# sshpw --username root --sshkey "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM2uNvCh4aHbk8v/Fty9inxQLpda4z7Vb16Dbn24zTfm" "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDrjDqSVdz/vearombs3vomFY+l3VwAesd2BBfQZK51BekjZJlu4Ac6I2w0adf+vXBHMJULluG0Xh21eL0PF2vWkZ6i4yXGcXd/Zdb40HWsFeryKlaWYaLd31njbXKlu9TYkLtNO6le7Oy+BepydzfkPCjepaeHtm/zi/5SxZ+sHfEzCZclf8aYH1yEMGJIMJqJ96rLxfFBmH1RZThq2F7aIObA/sNySrcDZFFOv9i7Kqohqz8kzJwiARCpThBa+jj/3qWd1VyTRk7Sgk0bcgRSZ/zbhkCYGQ5UUr8CxEggvZGvfL7GD4Fb8gUOo4kZe2r5Y6L568BPuGwdfFtN95MJ"

# SELinux is enabled, but only logs things that would be denied in enforcing mode.
selinux --permissive

%packages
@^workstation-product-environment
@admin-tools
@development-tools
@editors
@libreoffice
@office
@sound-and-video
@system-tools
akmod-VirtualBox
alacarte
audacity
autoconf
# if unnecessary, please comment out.
autofs
automake
backintime-qt
baobab
bijiben
bitwarden
blivet-gui
# if unnecessary, please comment out.
cachefilesd
calibre
# if unnecessary, please comment out.
certbot
certbot-nginx
# alternative web browser
chromium
clementine
# if unnecessary, please comment out.
cockpit
cockpit-composer
cockpit-dashboard
cockpit-machines
cockpit-networkmanager
cockpit-packagekit
cockpit-storaged
cockpit-system
colordiff
# needs a lot of space. if unnecessary, please comment out.
# darktable
# necessary for nm-connection-editor
dbus-x11
diffuse
digikam
distribution-gpg-keys
dnf-automatic
dnf-plugin-system-upgrade
# Network-Monitoring
etherape
evince
evolution
fdupes
fedora-release-workstation
firefox
ffmpeg
flatpak
freerdp
fslint
gedit
gimp
git-all
gnome-calendar
gnome-clocks
gnome-contacts
gnome-firmware
gnome-maps
gnome-online-accounts
gnome-terminal
gnome-todo
gnome-tweaks
gnome-usage
gnome-weather
gparted
gstreamer1*
gthumb
htop
icedtea-web
iftop
inkscape
java-openjdk
# needed by VirtualBox
kernel-devel
keybase
langpacks-de
langpacks-en

mesa*
# music on console (needs a config-file, so run the following command)
# echo "TiMidity_Config = /etc/timidity.cfg" >> .moc/config
moc
# if unnecessary, please comment out.
modem-manager-gui
neofetch
NetworkManager-*
# PCP Monitoring on localhost:19999, https://github.com/netdata/netdata
netdata
# Network-Monitoring
nethogs
nextcloud-client
nmap
ocl-icd
# if unnecessary, please comment out.
octave
opencl-*
openshot
openshot-lang
p7zip
p7zip-gui
p7zip-plugins
pam-u2f
pamu2fcfg
# if unnecessary, please comment out.
postgresql-server
powertop
qemu
remmina
# if unnecessary, please comment out.
R
# btrfs snapshots (https://dustymabe.com/2019/01/06/fedora-btrfs-snapper---the-fedora-29-edition/)
snapper
# Shamir's secret sharing scheme
ssss
python3-dnf-plugins-extras-snapper
# data revocery tools
testdisk
# needs a lot of space. if unnecessary, please comment out.
texlive-scheme-full
texworks
thunderbird
thunderbird-enigmail
transmission
# DNS
vim-enhanced
VirtualBox
virtualbox-guest-additions
virtualbox-guest-additions-ogl
virt-manager
vlc
vulkan*
xrdp
youtube-dl
%end

%addon com_redhat_kdump --disable --reserve-mb='128'

%end

%anaconda
# --minquality does not seem to work
pwpolicy root --minlen=10 --minquality=50 --strict --notempty --nochanges
pwpolicy user --minlen=8  --minquality=30 --strict --notempty --nochanges
pwpolicy luks --minlen=10 --minquality=50 --strict --notempty --nochanges
%end

%post
# Repositories
dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm https://github.com/taw00/riot-rpm/raw/master/toddpkgs-riot-repo.fedora.rpm https://prerelease.keybase.io/keybase_amd64.rpm
# Riot
rpm --import https://keybase.io/toddwarner/key.asc
# negativo17 nvidia repository
dnf config-manager --add-repo=https://negativo17.org/repos/fedora-nvidia.repo
# Packages
dnf -y install nvidia-driver nvidia-settings riot rpmfusion-free-release-tainted rpmfusion-nonfree-release-tainted --refresh
# Signal Desktop as Flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && flatpak install -y flathub org.signal.Signal
# dnf-automatic security upgrades
# timer configuration: /etc/systemd/system/multi-user.target.wants/dnf-automatic.timer
echo -n '[commands]
upgrade_type = security
random_sleep = 0
download_updates = yes
apply_updates = yes

[emitters]
emit_via = stdio

[email]
email_from = dnf@localhost
email_to = root@localhost
email_host = localhost

[command]

[command_email]
email_from = dnf@localhost
email_to = root@localhost

[base]
debuglevel = 1' > /etc/dnf/automatic.conf;
systemctl enable --now dnf-automatic.timer
%end

# Reboot After Installation
reboot --eject
