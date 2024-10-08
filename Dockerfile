FROM archlinux:latest
RUN pacman --noconfirm -Sy base-devel vim git sudo
RUN useradd -m pacman
RUN echo "pacman ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/pacman
USER pacman
