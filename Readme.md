# WHILE Loop speeds of Programming languages

Languages included in this test are
- C
- C++
- Java (openjdk 21/ubuntu)
- Rust 
- Go 1.23
- Python3.12
- Cython 3.0.11

## Here is simple algogrithm used in this test

```
#include <stdio.h>

int main() {
    int count = 0;

    while (count < 1000000000) {
        count++;
    }

    printf("Final count: %d\n", count);

    return 0;
}
```
## Before running the runnner.sh!

That python code would work correctly is important to start install and activate
virtual environment.

Run in terminal

- install virtual environment
> python3.12 -m venv venv_cy

- activate
> . ./venv_cy/bin/activate

Then you can run script running compiled binaries and python tests
> bash runnner.sh test2.log

## How to compile code

- **Java**: javac Main.java
- **C**: gcc -o c_loop c_loop_bil.c
- **C++:** cpp -o cpploop cpp_loop_billion.cpp
- **Python** can not be compiled
- **Cython**:
```
cd cy
# Python code for cython:
# setup.py:
#----------
from setuptools import setup
from Cython.Build import cythonize

setup(
    name='Looping test app',
    #ext_modules=cythonize("cy_loop_billion.pyx"),
    ext_modules=cythonize("cy_loop_billion.py"),
)

# app.py:
#---------
from cy_loop_billion import loop_py
loop_py()

# cy_loop_billion.py
import cython

def loop_py():
	counter: cython.int # cython type
	counter = 0
	while counter < 1000000000:
		counter+=1
	print(counter)

```

- **Rust:** rustc rust_loop_bil.rs
- **JS:** node js_loop_bli.js

## Results

(Generated by awk from runnner.sh, look above):
```
 awk 'BEGIN{last_row=""}{if ($0 ~ /^\-+/){print(last_row);}else if($0 ~ /real/){print($0"\n");} last_row=$0;}' test2.log
```
| Pos. | Lang. | CPU time |
| ---- | ----------- | ---------- |
| 1. | CYTHON | 0.010s |
| 2. | GOLANG | 0.201s |
| 3. | C | 0.274s |
| 4. | JS (node 21) | 0.352s |
| 5. | RUST | 0.457s |
| 6. | C++ | 0.498s |
| 7. | JAVA | 2.323s |
| 8. | Python3.12| 14.775s |




