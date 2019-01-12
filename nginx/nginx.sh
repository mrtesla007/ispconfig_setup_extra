#https://nginx.org/en/linux_packages.html
echo "[nginx]" >> /etc/yum.repos.d/nginx.repo"
echo "name=nginx repo" >> /etc/yum.repos.d/nginx.repo"
echo "baseurl=http://nginx.org/packages/centos/7/$basearch/" >> /etc/yum.repos.d/nginx.repo"
echo "gpgcheck=1" >> /etc/yum.repos.d/nginx.repo"
echo "enabled=1" >> /etc/yum.repos.d/nginx.repo"
echo "gpgkey=https://nginx.org/keys/nginx_signing.key" >> /etc/yum.repos.d/nginx.repo"

yum update
yum install nginx
yum install nginx-all-modules nginx-mod-http-geoip nginx-mod-http-image-filter nginx-mod-http-perl nginx-mod-http-xslt-filter nginx-mod-mail nginx-mod-stream
