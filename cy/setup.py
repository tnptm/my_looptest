from setuptools import setup
from Cython.Build import cythonize

setup(
    name='Looping test app',
    #ext_modules=cythonize("cy_loop_billion.pyx"),
    ext_modules=cythonize("cy_loop_billion.py"),
)
