#! /bin/bash

use_editor=echo

if test $# -eq 1
then
    use_editor=$1
else
    echo "Uso: $0 <diff_editor>"
    echo Imprimindo apenas o nome dos arquivos.
fi

IFS="
"

for e in `diff -q -r . / | grep -v Somente`
do
    file_a=`echo $e | awk '{print $3}'`
    file_b=`echo $e | awk '{print $5}'`
    $use_editor -f $file_a $file_b
done
