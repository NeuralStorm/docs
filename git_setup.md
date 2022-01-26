
# Git installation

Download and install git from https://git-scm.com/downloads

Accept the default settings. You may want to change the text editor git will use if you plan on making commits.

# Setting up git for development

TODO

# Setting up git for deployment (windows)

If the repository is public skip to **no auth**

Open git bash.

Run `ssh-keygen` (type in command and press enter)

Press enter 3 times to accept the default path and set an empty passphrase

Run `cat ~/.ssh/id_rsa.pub` and send the output to an admin on the git repo

Once they have added the public key to the repo continue

**no auth**

Navigate to the folder you want to download the code to in explorer  
Right click and click `Git Bash Here` to open a git bash in that folder

Run `git clone "<repo url>"`  
e.g. `git clone "https://github.com/moxon-lab-codebase/Behavioral-Control-Programs.git"`  
or `git clone "git@github.com:moxon-lab-codebase/Behavioral-Control-Programs.git"`  
If the repository is public repo url will be an https url like `https://github.com/moxon-lab-codebase/docs.git`  
If the repository is private repo url will be a git url like `git@github.com:moxon-lab-codebase/ docs.git`  
This will create a folder with the same name as the repo with the code.

## Updating deployed code

Navigate to the repo folder in explorer  
Right click and click `Git Bash Here` to open a git bash in that folder

Run `git pull`  
If you get an error about modified files you can run `git stash` to remove local modifications then re-run `git pull`
