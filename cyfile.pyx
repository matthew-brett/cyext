import numpy as np
cimport numpy as cnp


def my_func(cnp.ndarray[cnp.npy_longdouble] output):
    return np.sum(output)


x = np.ones(4, np.longdouble)
print(my_func(x))
