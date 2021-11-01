from setuptools import setup

import numpy as np
from distutils.extension import Extension
from Cython.Distutils import build_ext

setup(
    name  = "cyext",
    cmdclass = {'build_ext': build_ext},
    ext_modules = [Extension("cyext", sources=["cyfile.pyx"],
                             include_dirs=[np.get_include()])]
    )
