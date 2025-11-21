#!/bin/bash

# Создаем временный контейнер для копирования файлов в том
docker run --rm -v $(pwd)/mysql/initdb:/source -v mysql_init:/target alpine \
  cp -r /source/. /target/

# Проверяем что файлы скопировались
docker run --rm -v mysql_init:/data alpine ls -la /data