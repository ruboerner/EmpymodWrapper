# EmpymodWrapper

This repository contains a Julia wrapper for the Python library [empymod](https://github.com/emsig/empymod). 

## Why use this wrapper?

This wrapper allows users to work with the Python library `empymod` while staying in the Julia environment.

## Setup and installation

1. Make sure you have a working Julia environment.
2. Open Julia. Run
```
using Pkg
Pkg.clone("https://github.com/ruboerner/EmpymodWrapper.jl")
```
3. Now we need Julia to point to the python executable.
```
ENV["PYTHON"] = "/path/to/your/python/executable"
Pkg.build("EmpymodWrapper")
```
If all goes well, you should be able to use `empymod` from Julia.

You can test the functionality with
```
(@v1.10) pkg> test EmpymodWrapper
```

## Usage

A typical use of `EmpymodWrapper` looks like
``` julia
using EmpymodWrapper

hz = empymod_loop(
        src=[0, 0, 0, 0, 90],
        rec=[offset, 0, 0, 0, 90],
        depth=0, res=[2e14, 100], freqtime=1e-3, verb=0)
```

Note that the input parameters and their intended meaning are identical to those in `empymod`.

## License

This repository is &copy; Ralph-Uwe B&ouml;rner (2024) under an Apache 2.0 license.

