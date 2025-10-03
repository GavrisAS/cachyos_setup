#!/usr/bin/env fish

# Проверяем задан ли плейбук
if not set -q PLAYBOOK
    echo "❌ Не задана переменная PLAYBOOK"
    exit 1
end

# Настройки репозитория
set GIT_REPO "https://github.com/GavrisAS/cachyos_setup.git"

# Текущий пользователь
set USER (whoami)

# Аргументы для ansible-pull
set PULL_ARGS --ask-become-pass

# если задана переменная EXTRA_ARGS — дополняем аргументы
if set -q EXTRA_ARGS
    set PULL_ARGS $PULL_ARGS $EXTRA_ARGS
end

# Путь до sudoers-файла
set SUDOERS_PATH "/etc/sudoers.d/nopasswd-pacman"

# 1) Добавляем sudoers для pacman и paru, если ещё нет
if not test -f $SUDOERS_PATH
    echo "Добавляем в sudoers права для pacman и paru..."
    echo "$USER ALL=(ALL) NOPASSWD: /usr/bin/pacman, /usr/bin/paru" \
        | sudo tee $SUDOERS_PATH > /dev/null
    sudo chmod 440 $SUDOERS_PATH
else
    echo "✅ Судоеры для pacman и paru уже настроены."
end

# 2) Устанавливаем Ansible, Git и keyring CachyOS
echo
echo "Устанавливаем пакеты: ansible, git, cachyos-keyring..."
sudo pacman -Syu --noconfirm ansible git cachyos-keyring

# 3) Устанавливаем коллекции
echo
echo "Устанавливаем коллекции ansible-galaxy..."
ansible-galaxy collection install kewlfft.aur

# 4) Запускаем плейбук
echo
echo "Запускаем ansible-pull из $GIT_REPO"
echo "Плейбук: $PLAYBOOK"
echo "С аргументами: $PULL_ARGS"
echo

ansible-pull -U $GIT_REPO \
  --limit localhost \
  $PULL_ARGS \
  desktop.yml

echo "✅ Готово! Система настроена."
