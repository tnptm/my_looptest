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
#java Main  #javac Main.java 
#java Main 
(time java Main) 2>&1 | tee -a $RESFILE

sleep 1
echo >> $RESFILE
echo "GOLANG" >> $RESFILE
echo "------------------" >> $RESFILE
#cd go/
#ls -la
(time ./go/go_loop_billlion ) 2>&1 | tee -a $RESFILE
#cd ..

sleep 1
echo >> $RESFILE
echo "Python3.12">> $RESFILE
echo "------------------">> $RESFILE
(time python3 python_loop_billion.py ) 2>&1 | tee -a $RESFILE

sleep 1
echo >> $RESFILE
echo "CYTHON">> $RESFILE
echo "------------------">> $RESFILE
#python3.12 -m venv venv_cy>> $RESFILE
#pip install Cython
#nano python_loop_billion.py 
#pip install setuptools
#python setup.py build_ext --inplace
#cd ct
#cd cy
#python setup.py build_ext --inplace
(time python3 cy/app.py ) 2>&1 | tee -a $RESFILE
#cd ..

#python
#time python app.py 
#ls -la
#python setup.py build_ext --inplace
#ls -la
#time python app.py 
#python setup.py build_ext --inplace
#python
#ls -la
#python -m cython --version
#python setup.py build_ext --inplace
#ls -al
#time python app.py 
#cd ..
#java Main 
#time java Main 
sleep 1
echo >> $RESFILE
echo "RUST" >> $RESFILE
echo "------------------" >> $RESFILE
#rustc rust_loop_bil.rs 
#time./rust_loop_bil 
(time ./rust_loop_bil ) 2>&1 | tee -a $RESFILE
#python3 app.py
#cd cy
#python3 app.py
#time python3 app.py
#cd ..
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
#time -h
#node --help
#node js_loop_bli.js 
(time node js_loop_bli.js ) 2>&1 | tee -a $RESFILE
#history