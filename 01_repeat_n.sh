#!/bin/bash

MANUAL=\
"一つ目の引数にはループさせる回数、"\
"二つ目の引数には実行させるコマンド、"\
"三つ目の引数（任意）にはコマンドを実行するパス"\
"を入力してください。"

if [ $# -lt 2 ]; then
 echo $MANUAL >&2
	exit 1
fi

loopcount=$1
command=$2
dirpass=$3

commandcount=1

for i in `seq 1 $loopcount`
	do
		echo $commandcount"回目"
		$command $dirpass
		commandcount=`expr $commandcount + 1`
	done

