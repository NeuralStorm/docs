# Python windows installation

* Download the [python 3.9.1 installer](https://www.python.org/ftp/python/3.9.1/python-3.9.1-amd64.exe)
* Run the installer
* Check "Add Python 3.9 to PATH"
* Click "Install Now"

# Running python applications in the command line on windows

* open the directory containing the program you want to run in windows explorer
* shift right click and click "Open PowerShell window here", if git is installed "Git Bash Here" can also be used
* type a command (e.g. `python main.py`) and press enter

note: with git bash programs that take user input on the command line may need to be run with winpty e.g. `winpty python main.py`

# Dependency Installation

Programs should include a `requirements.txt` file.

Run this command to install the requirements specified in requirments.txt
```
pip install -r requirements.txt
```

# Virtual Environments

TODO

# Jupyter notebooks

### Initial Setup

Run `pip install jupyterlab` to install jupyter  
Run `pip --upgrade --upgrade-strategy eager jupyterlab` to update jupyter

### Opening a notebook

Running `python -m jupyter lab` will start a local server and open a browser tab with the jupyter UI
