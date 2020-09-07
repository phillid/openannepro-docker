FROM archlinux/base
MAINTAINER David Phillips <dbphillipsnz@gmail.com>

RUN pacman -Syu \
    --noconfirm --needed \
    arm-none-eabi-{gcc,newlib} \
    make grep diffutils awk && \
    rm -rf /var/cache/pacman/pkg
