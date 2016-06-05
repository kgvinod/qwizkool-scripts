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

docker cp build/public_html d218afbfc3ad:/var/www/example.com/public_html
