# Добавить права на исполнение файла владельцу, группе и остальным
chmod +x file

# Убрать права на чтение и изменение файла владельцу, группе и остальным
chmod -rw file

# Назначить файлу file пользователя root и группу staff
chown chown root:staff file

# Вывести список всех файлов, принадлежащих пользователю или группе, можно с помощью утилиты find:
find / -group staff
find / -group 0
find / -user root

# Пример добавления пользователя testee
useradd -m testee

# Задать пароль пользователю testee
passwd testee

# Изменение домашнего каталога пользователя
usermod -d /новый/домашний/каталог -m имя_пользователя

# Изменение имени пользователя
usermod -l новое_имя старое_имя

# Добавить пользователя к группам (доп_группы — список групп, разделённых запятыми без пробелов)
usermod -aG доп_группы имя_пользователя

# Удалить аккаунт пользователя
userdel -r имя_пользователя # -r указывает на то, что домашний каталог тоже должны быть удалены

# Команда для вывода списка групп, в которых состоит пользователь
groups имя_пользователя

# Команда id позволяет узнать дополнительные подробности, вроде UID и GID пользователя
id имя_пользователя

# Команда для вывода списка всех существующих в системе групп
cat /etc/group

# Команда для создания новой группы
groupadd название_группы

# Команда для удаления группы
groupdel название_группы

# Команда для удаления пользователя из группы
gpasswd -d имя_пользователя название_группы

# Установить права «rwxr-xr-x» (0755) для файла
chmod u=rwx,g=rx,o=rx file

# Установить права на выполнение для владельца файла, удалить права на выполнение у группы, удалить права на запись и выполнение у остальных пользователей
chmod u+x,g-x,o-wx file

# Установить рекурсивно права на чтение для всех пользователей
chmod -R a+r ./dir

# Рекурсивно удалить атрибуты SUID и SGID
chmod -R u-s,g-s ./dir