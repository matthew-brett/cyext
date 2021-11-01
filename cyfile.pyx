import numpy as np
cimport numpy as cnp


def one_long_double():
    cdef:
        cnp.ndarray[cnp.npy_longdouble] output

    output = np.array([1], dtype=np.longdouble)
    print(output[0])


def one_clong_double():
    cdef:
        cnp.ndarray[cnp.npy_clongdouble] output

    output = np.array([1 + 1j], dtype=np.clongdouble)
    print(output[0])


def one_long_double_complex():
    cdef:
        cnp.ndarray[long double complex] output

    output = np.array([1 + 1j], dtype=np.clongdouble)
    print(output[0])


one_long_double()
one_clong_double()
one_long_double_complex()
