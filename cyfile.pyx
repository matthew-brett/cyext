import numpy as np
cimport numpy as cnp


def one_long_double():
    cdef:
        cnp.ndarray[cnp.npy_longdouble] output

    output = np.array([1], dtype=np.longdouble)
    print(output[0])


def one_c128():
    cdef:
        cnp.ndarray[cnp.complex128_t] output

    output = np.array([1 + 1j], dtype=np.complex128)
    print(output[0])


def one_c256():
    cdef:
        cnp.ndarray[cnp.npy_complex256] output

    output = np.array([1 + 1j], dtype=np.complex256)
    print(output[0])


def one_clong_double():
    cdef:
        cnp.ndarray[cnp.clongdouble_t] output

    output = np.array([1 + 1j], dtype=np.clongdouble)
    print(output[0])


def one_long_double_complex():
    cdef:
        cnp.ndarray[long double complex] output

    output = np.array([1 + 1j], dtype=np.clongdouble)
    print(output[0])


print('long double')
one_long_double()
print('c128')
one_c128()
print('c256')
one_c256()
print('clongdouble')
one_clong_double()
print('long double complex')
one_long_double_complex()
