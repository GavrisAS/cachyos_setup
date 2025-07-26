# ansible
Ansible playbooks

1. Установить Ansible и Git на свежую систему CachyOS:

    sudo pacman -Syu ansible git --noconfirm
   
2. Установить коллекцию Ansible для работы с AUR:

    ansible-galaxy collection install kewlfft.aur

3. Выполнить вручную обновление ключей перез запуском playbook

    pacman -Sy cachyos-keyring

5. Выполнить

    ansible-playbook setup_cachyos_<вставить нужное>.yml -K
