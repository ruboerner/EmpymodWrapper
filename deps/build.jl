using PyCall
using Conda

Conda.pip_interop(true)
Conda.pip("install", ["empymod"])