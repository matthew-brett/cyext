project('cyext', 'c')

py_mod = import('python')
py_inst = py_mod.find_installation()
py_dep = py_inst.dependency()

cython_cli = find_program('tools/cythoner.py')
cython_gen = generator(cython_cli,
  arguments : [
    '@INPUT@',
    '@OUTPUT@'],
  output : '@BASENAME@.c')

pyx_files = files('cyfile.pyx')

cython_c_files = cython_gen.process(pyx_files)

py_inst.extension_module('cyext',
  cython_c_files,
  dependencies : [py_dep])
