import numpy as np
cimport numpy as cnp
import ctypes

def get_arr():
    cdef cnp.ndarray[long double, ndim=1] outp = np.zeros(
        10, dtype=cnp.npy_float64)
    return outp
