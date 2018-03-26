#!/usr/bin/bash 
#
#源码安装python

yum -y install wget gcc zlib*
python_url=https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tgz
install_dir=/app/install
python=/usr/bin/python
python_dir=/usr/local/python3

mkdir -p $install_dir
cd $install_dir
wget $python_url
tar zxvf Python-3.6.4.tgz
mv Python-3.6.4 $python_dir
cd $python_dir
./configure --prefix=$python_dir
make && make install

if [ -f $python ];then
	mv $python $python\.bak
fi
ln -s $python_dir/python $python

rm -rf /app/install
