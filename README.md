# The file

```
pip install -e .
python -c 'import cyext'
```

Or:

```
make
```

The output is:

```
1.0
{'real': 1.0, 'imag': 1.0}
(1+1j)
```

The point is - it's really annoying to get a dict output from indexing the
complex thing. And it's annoying that the result differs for `complex long
double`.
