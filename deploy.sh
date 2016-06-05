cd ..
mkdir -p build
rm -rf build/*
cd build
mkdir public_html

cd ../qwizkool-client
ember build

cd ..
cp -r qwizkool-client/dist/* build/public_html
cp -r slim_api build/public_html

chmod 755 -R build/public_html

tar -czvf build/www.tgz -C build/public_html .

scp -P 21098 build/www.tgz qwizgjky@server212.web-hosting.com:/home/qwizgjky/public_html/developer/vinod/
#scp *.tgz vinod@192.168.0.62:/var/www/html/
