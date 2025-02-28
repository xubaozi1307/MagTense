# Python Interface

The Fortran code is compiled and wrapped to a module that can be directly called from Python. The tool **f2py** of the NumPy package is used to wrap the interface file **lib_mag/FortranToPythonIO.f90**.

## Deployment with Conda

### Step 1

Installation of required python packages

```bash
conda install -y numpy matplotlib
```

### Step 2

GFortran compiler and Make utility (Windows + MacOS only)

- Windows

  - Installation in conda environment

    ```bash
    conda install -y -c msys m2w64-gcc-fortran
    ```

  - Installation from binary | [MinGW](https://gcc.gnu.org/wiki/GFortranBinaries#Windows)

- MacOS:
  - Installation from binary | [HPC Mac OS X](http://hpc.sourceforge.net/)
  - Installation with [Homebrew](https://brew.sh/) ( **brew install gcc** )

### Step 3

Creation of an importable Python module from Fortran source code

Navigate to folder **MagTense/python/lib_mag/**, run **make**, and add the path to your PYTHONPATH

```bash
cd /path/to/repo/python/lib_mag/
make
conda develop /path/to/repo/python/lib_mag/
```
