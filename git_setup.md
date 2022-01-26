
# Git installation

Download and install git from https://git-scm.com/downloads

Accept the default settings. You may want to change the text editor git will use if you plan on making commits.

---

Git should be set up for development on personal computers being used by a single user with a github account. A deployment setup should be used for shared computers where the usage doesn't correspond to a specific user.

Note: Github only allows a deploy key to be used on a single repo which complicates deploying multiple repos to one computer using deploy keys. Request assistance if this is needed.

If the repository is public you can skip to **after auth** as long as you use https and not ssh. For private repos you should use ssh. Private repos can be accessed using https with your github login but that is not covered in this guide.

# Setting up git for development

Follow github's guides for  
[checking if you have an existing ssh key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/checking-for-existing-ssh-keys)  
[creating an ssh key if you don't have one](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) (note that setting up and using ssh-agent is optional, the section on hardware keys can be ignored)  
[adding your ssh key to your github account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

proceed to **after auth**

# Setting up git for deployment (windows)

Open git bash.

Run `ssh-keygen` (type in command and press enter)

Press enter 3 times to accept the default path and set an empty passphrase

Run `cat ~/.ssh/id_rsa.pub` and send the output to an admin on the git repo

Once they have added the public key to the repo continue

proceed to **after auth**

---
# **after auth**

Navigate to the folder you want to download the code to in explorer  
Right click and click `Git Bash Here` to open a git bash in that folder

Run `git clone "<repo url>"`  
e.g. `git clone "https://github.com/moxon-lab-codebase/Behavioral-Control-Programs.git"`  
or `git clone "git@github.com:moxon-lab-codebase/Behavioral-Control-Programs.git"`  
If the repository is public repo url will be an https url like `https://github.com/moxon-lab-codebase/docs.git`  
If the repository is private repo url will be a git url like `git@github.com:moxon-lab-codebase/ docs.git`  
This will create a folder with the same name as the repo with the code.

# Updating deployed code

Navigate to the repo folder in explorer  
Right click and click `Git Bash Here` to open a git bash in that folder

Run `git pull`  
If you get an error about modified files you can run `git stash` to remove local modifications then re-run `git pull`

# Switching branches

Navigate to the repo folder in explorer  
Right click and click `Git Bash Here` to open a git bash in that folder

Run `git checkout <branch_name>`  
e.g. to use a branch called "`new_feature`" you would run `git checkout new_feature`

If you get an error about modified files you can run `git stash` to remove local modifications then re-run the command.
