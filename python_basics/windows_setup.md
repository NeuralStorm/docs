
Multiple methods for installing python are provided below. Only one should be followed. Anecdotally the windows store version is more prone to strange issues.

# Using winget

* Available python versions can be found with `winget search python.python`.
* Install with `winget install --exact --id Python.Python.3.11` replacing 3.11 with the desired version.

If the error `Failed in attempting to update the source: winget` is encountered run `winget update` in an elevated command prompt (search for cmd in the start menu, right click, start as administrator) then retry the instructions.
[github ticket](https://github.com/microsoft/winget-cli/issues/1656#issuecomment-1539002808)

# Using the python installer

* Download the correct python installer from the [python download page](https://www.python.org/downloads/). The correct installer will usually be called "Windows installer (64-bit)".
* Run the installer
* Check "Add Python [X.Y] to PATH"
* Click "Install Now"

[python 3.11.5](https://www.python.org/ftp/python/3.11.5/python-3.11.5-amd64.exe)  
[python 3.9.1](https://www.python.org/ftp/python/3.9.1/python-3.9.1-amd64.exe)

~~If you get a `Permission Denied` error~~ you ~~may~~ probably need to follow the [instructions here](https://stackoverflow.com/questions/56974927/permission-denied-trying-to-run-python-on-windows-10/57168165#57168165) or [here](https://stackoverflow.com/questions/58754860/cmd-opens-window-sto,re-when-i-type-python).

# Using the windows store

Find the [microsoft store](https://apps.microsoft.com/store/apps) page for the desired python version. Click on the "Get in Store app", then click "Get" in the window that appears.

[python 3.11](https://apps.microsoft.com/store/detail/python-311/9NRWMJP3717K)  
[python 3.9](https://www.microsoft.com/en-us/p/python-39/9p7qfqmjrfp7)

---
---

# Running python applications in the command line on windows

* open the directory containing the program you want to run in windows explorer
* shift right click and click "Open PowerShell window here", if git is installed "Git Bash Here" can also be used
* type a command (e.g. `python main.py`) and press enter

note: with git bash programs that take user input on the command line need to be run with winpty e.g. `winpty python main.py`
