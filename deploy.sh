sh ./buildall.sh

cd ../build
cp -r public_html www
tar -czvf www.tgz www

scp -P 21098 www.tgz qwizgjky@server212.web-hosting.com:/home/qwizgjky/public_html/developer/vinod/
#scp *.tgz vinod@192.168.0.62:/var/www/html/
