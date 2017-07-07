#!/bin/bash
# Install CentOS-7 - Minimal (First entry point in list)
yum groupinstall "X Window System"
yum install gnome-classic-session gnome-terminal nautilus-open-terminal control-center liberation-mono-fonts
unlink /etc/systemd/system/default.target
ln -sf /lib/systemd/system/graphical.target /etc/systemd/system/default.target
reboot
# if have GNOME Desktop include
# yum group install "GNOME Desktop" "Graphical Administration Tools"
# ln -sf /lib/systemd/system/runlevel5.target /etc/systemd/system/default.target