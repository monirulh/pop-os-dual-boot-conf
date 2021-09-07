#!/bin/bash

sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install grub-efi grub-customizer grub2-common -y

sudo grub-install
sudo cp /boot/grub/x86_64-efi/grub.efi /boot/efi/EFI/pop/grubx64.efi
sudo cp ./grub.cfg /boot/efi/EFI/pop/
sudo update-grub