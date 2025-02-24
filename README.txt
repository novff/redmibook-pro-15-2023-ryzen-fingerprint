HUGE THANKS TO https://github.com/vrolife/modern_laptop
this is lightly modified install script with dependencies sorted out and automatically installed for ARCH LINUX 


after running install.sh with root privilegies enroll and verify your fingerprints either via fprintd-enroll and fprintd-verify or via gnome settings.

post installation add opencv and openexr to IgnorePkg in /etc/pacman.conf so that future updates do not break the fingerprint scanner
