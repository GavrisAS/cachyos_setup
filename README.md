# ansible
Ansible playbooks

1. Установить Ansible и Git на свежую систему CachyOS:

    sudo pacman -Syu ansible git --noconfirm
   
2. Установить коллекцию Ansible для работы с AUR:

    ansible-galaxy collection install kewlfft.aur

3. Выполнить

    ansible-playbook setup_cachyos_<вставить нужное>.yml -K
