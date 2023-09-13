
# Installation of tools

Follow the guide for installing [git](../git_setup.md).

Follow the guide for installing [python](../python_basics/windows_setup.md) using the installer. For python the plexon digital output requires 32-bit python so the [32-bit installer should be used](https://www.python.org/ftp/python/3.11.5/python-3.11.5.exe).

# Installation of the joystick task

Create a folder for the game, copy [`run.sh`](./run.sh) into the folder.  

`run.sh` can be downloaded in git bash using
```
curl 'https://raw.githubusercontent.com/NeuralStorm/docs/main/joystick_task/run.sh' -o run.sh
```

In git bash run
```
bash run.sh bootstrap
```
or the steps can be run individually
```
# create a python virtual environment at ./venv
bash run.sh venv
# clone the git repository and set it to the correct branch
bash run.sh clone
# install some wheels that aren't available on pypi for 32-bit python 3.11
bash run.sh install-py311-32
# install the rest of the dependencies and the game
bash run.sh install
```

# Updating the joystick task

```
bash run.sh pull
```
This will run `git pull` and install the changed code.

If the git repo is changed manually `bash run.sh install` should be run after to install the changed code.

# Running the joystick task

Double click run.sh or
```
bash run.sh
```
This will run the task then generate the json and csv output files.

The output files can be re-generated separately with
```
bash run.sh gen
```

# Misc Notes

The precompiled wheels in this folder are from [here](https://www.lfd.uci.edu/~gohlke/pythonlibs/).
These wheels are needed since some transient dependencies aren't packaged for 32-bit python 3.11 on pypi.
