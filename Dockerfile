FROM archlinux/base
MAINTAINER David Phillips <dbphillipsnz@gmail.com>

RUN pacman -Syu \
    --cachedir /tmp \
    --noconfirm --needed \
    arm-none-eabi-{gcc,newlib} \
    make grep diffutils awk
