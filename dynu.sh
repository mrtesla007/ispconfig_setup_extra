#Red Hat Enterprise Linux 7
rpm -ivh https://www.dynu.com/support/downloadfile/30 
yum install -y nano
nano /etc/dynuiuc/dynuiuc.conf 

#Commands
#Manage the service using systemd:
systemctl enable dynuiuc.service
systemctl start dynuiuc.service
#systemctl stop dynuiuc.service
systemctl restart dynuiuc.service
systemctl status dynuiuc.service

#View live log: tail -f /var/log/dynuiuc.log
#View entire log file: cat /var/log/dynuiuc.log
#Truncate log file: cat /dev/null > /var/log/dynuiuc.log
#View service status: systemctl status dynuiuc.service -l
