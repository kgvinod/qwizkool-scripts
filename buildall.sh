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

