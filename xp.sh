#!bin/bash
clear
echo "2 0 * * * root xp" >> /etc/crontab
systemctl daemon-reload
systemctl restart cron
sleep 0.5
clear