#!/bin/bash

# Установка зависимостей
sudo apt-get update
sudo apt-get install -y apt-transport-https software-properties-common wget

# Добавление ключа (новый способ без apt-key)
wget -q -O - https://packages.grafana.com/gpg.key | sudo gpg --dearmor -o /usr/share/keyrings/grafana.gpg

# Добавление репозитория (исправленный URL)
echo "deb [signed-by=/usr/share/keyrings/grafana.gpg] https://packages.grafana.com/oss/deb stable main" | sudo tee /etc/apt/sources.list.d/grafana.list

# Обновление и установка
sudo apt-get update
sudo apt-get install -y grafana

# Запуск службы
sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl enable grafana-server

echo "Установка завершена! Grafana доступна на http://localhost:3000"
