
# Introduction

Python is a programming language that emphasizes code readability and an object-oriented structure. Unlike languages like C++, python programs are not compiled, but rather run directly through a command prompt. It is the Moxon Neurorobotics Laboratory's primary programming language and going forward, new programs should be written in python whenever possible.

# Virtual Environments

* open terminal
* change path to be where your code is
* run python -m venv venv in this case, the second venv is the name of the environment
* activate virtual environment source venv/Scripts/activate (this assumes you are on windows, otherwise it might look like . venv/bin/activate ). Note in both cases, venv is the name of the virtual environment created in step 3
* Install dependencies (we have instructions on how to do this in the various repos)

# Jupyter notebooks

Jupyter notebooks are human-readable documents which contain both executable  computer code and rich text elements (text, equations, figures, et cetera). Jupyter lets you edit and run notebook documents via a web browser (e.g. Chrome). Notebooks can be executed on a local desktop requiring no internet access or can be installed on a remote server and accessed through the internet.

### Installation

Run `pip install jupyterlab` to install jupyter  
Run `pip --upgrade --upgrade-strategy eager jupyterlab` to update jupyter

### Opening a notebook

Running `python -m jupyter lab` will start a local server and open a browser tab with the jupyter UI

# Terminals

Graphical user interfaces (GUIs), allow you to to accomplish daily tasks by interacting with windows and icons, and are helpful for many tasks. However, for many tasks, we are better off  entering text commands into the computer directly for more efficiency and flexibility. We usually do this through terminals. Also known as command lines or consoles, these allow  us to accomplish and automate tasks on a computer without the use of a graphical user interface. Using a terminal allows us to send simple text commands to our computer to do things like navigate through a directory or copy a file, and form the basis for many more complex automations and programming skills.

There are many possible choices for terminals. Popular choices include cmdand Powershell (both of which are built in Windows machines), git bash, and cmder. If you are reading this page, chances are that you won’t need to worry too much about which terminal you use, so it may  be best to stick to git bash.
