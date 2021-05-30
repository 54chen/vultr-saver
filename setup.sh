#!/bin/sh
dir=`pwd`;
create_sh=${dir}'/create.sh >> ~/curl.log';
destroy_sh=${dir}'/destroy.sh >> ~/curl.log';

echo ${create_sh} > ~/.wakeup;
echo ${destory_sh} > ~/.sleep;

chmod 777 ~/.wakeup;
chmod 777 ~/.sleep;

echo 'setup successfully!';
