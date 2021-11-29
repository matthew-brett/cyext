import numpy as np
cimport numpy as cnp


ctypedef fused DTYPE_floating_t:
    long double


def my_func(DTYPE_floating_t [:] arr):
    return np.sum(arr)


x = np.ones(4, np.longdouble)
print(my_func(x))
