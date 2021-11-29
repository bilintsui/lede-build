#! /bin/bash
git clone https://github.com/bilintsui/lede
cd lede
echo 'src-git helloworld https://github.com/fw876/helloworld' >> ./feeds.conf.default
./scripts/feeds update -a
./scripts/feeds install -a
make menuconfig
cd ..
cp lede/.config .
