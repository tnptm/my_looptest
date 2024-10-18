#!/bin/bash
#. venv_cy/bin/activate

echo $1
if [ ! -f $1 ]; then
    RESFILE="$1"
else 
    echo "Give filename for results"
    exit
fi


# run all examples
date > $RESFILE
echo "JAVA" >> $RESFILE
echo "------------------">> $RESFILE
#javac Main.java 


(time java Main) 2>&1 | tee -a $RESFILE

sleep 1
echo >> $RESFILE
echo "GOLANG" >> $RESFILE
echo "------------------" >> $RESFILE

(time ./go/go_loop_billlion ) 2>&1 | tee -a $RESFILE

sleep 1
echo >> $RESFILE
echo "Python3.12">> $RESFILE
echo "------------------">> $RESFILE
(time python3 python_loop_billion.py ) 2>&1 | tee -a $RESFILE

sleep 1
echo >> $RESFILE
echo "CYTHON">> $RESFILE
echo "------------------">> $RESFILE

#pip install Cython
#pip install setuptools
#python setup.py build_ext --inplace

(time python3 cy/app.py ) 2>&1 | tee -a $RESFILE

sleep 1
echo >> $RESFILE
echo "RUST" >> $RESFILE
echo "------------------" >> $RESFILE
#rustc rust_loop_bil.rs 

(time ./rust_loop_bil ) 2>&1 | tee -a $RESFILE

sleep 1
echo >> $RESFILE
echo "C" >> $RESFILE
echo "------------------" >> $RESFILE

#gcc c_loop_bil.c -o c_loop
(time ./c_loop ) 2>&1 | tee -a $RESFILE

sleep 1
echo >> $RESFILE
echo "C++" >> $RESFILE
echo "------------------" >> $RESFILE

(time ./cpploop ) 2>&1 | tee -a $RESFILE


sleep 1
echo >> $RESFILE
echo "JS (node 21)" >> $RESFILE
echo "------------------" >> $RESFILE

#node js_loop_bli.js 
(time node js_loop_bli.js ) 2>&1 | tee -a $RESFILE
