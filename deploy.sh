cd ..
mkdir -p build
rm -r build/*


cd qwizkool-client
ember build
mv dist ../build/
cd ../build
tar -czvf client.tgz -C dist .

cd ..
tar czvf build/slim_api.tgz slim_api

cd build
scp -P 21098 *.tgz qwizgjky@server212.web-hosting.com:/home/qwizgjky/public_html/developer/vinod/www/
