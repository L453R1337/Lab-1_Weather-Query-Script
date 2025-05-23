# Lab-1_Weather-Query-Script

# Weather.sh

weather.sh — это Bash-скрипт для получения текущей температуры и влажности воздуха в указанном городе. Данные берутся с консольно-ориентированного погодного сервиса [wttr.in](https://github.com/chubin/wttr.in), а результат выводится в формате HTML.

## 📌 Описание

Скрипт обращается к API [wttr.in](https://wttr.in) и с помощью утилиты [`jq`](https://stedolan.github.io/jq/) извлекает текущую температуру (в градусах Цельсия) и влажность из JSON-ответа. Вывод оформлен в простом HTML-виде.

Пример HTML-вывода:
<HTML><BODY>
"15"
"62"
Mon May 20 15:00:01 UTC 2025
</BODY></HTML>

⚙️ Зависимости

curl

jq

🚀 Использование

./weather.sh <город>

Пример:

./weather.sh Perm

⏱️ Автоматизация через Cron

Скрипт настроен на выполнение каждую минуту с помощью cron. Пример строки в crontab:

* * * * * /home/admin/weather.sh PEE > /var/www/html/index.nginx-debian.html 2>> /home/admin/weather.err
