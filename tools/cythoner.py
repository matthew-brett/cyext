#!python3
import sys
import subprocess as sbp

from Cython.Compiler.Main import Context

_, in_fname, out_fname = sys.argv

module_name = Context([], []).extract_module_name(in_fname, object())

sbp.run(
    ['cython',
    '--module-name', module_name,
    '--output-file', out_fname,
     in_fname],
    stdout=sbp.PIPE,
    stderr=sbp.PIPE)
