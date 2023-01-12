# Python windows installation

To install python, start git bash (this is installed when you install git)and type python, this should open a [microsoft store page](https://www.microsoft.com/en-us/p/python-39/9p7qfqmjrfp7) that will allow you to install python.

# Python windows installation (old way)

* Download the [python 3.9.1 installer](https://www.python.org/ftp/python/3.9.1/python-3.9.1-amd64.exe)
* Run the installer
* Check "Add Python 3.9 to PATH"
* Click "Install Now"

~~If you get a `Permission Denied` error~~ you ~~may~~ probably need to follow the [instructions here](https://stackoverflow.com/questions/56974927/permission-denied-trying-to-run-python-on-windows-10/57168165#57168165) or [here](https://stackoverflow.com/questions/58754860/cmd-opens-window-store-when-i-type-python).

# Running python applications in the command line on windows

* open the directory containing the program you want to run in windows explorer
* shift right click and click "Open PowerShell window here", if git is installed "Git Bash Here" can also be used
* type a command (e.g. `python main.py`) and press enter

note: with git bash programs that take user input on the command line need to be run with winpty e.g. `winpty python main.py`

# Dependency Installation

Programs should include a `requirements.txt` file.

Run this command to install the requirements specified in requirments.txt
```
pip install -r requirements.txt
```
