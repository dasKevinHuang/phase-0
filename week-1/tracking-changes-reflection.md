###How does tracking and adding changes make developers' lives easier?

Tracking and adding changes makes working on code easier for developers by making it convenient to save any changes made to work and allowing for changes to be undone	
What is a commit?
A commit is the submission of any change or changes, along with comments, timestamp, and the change(s) itself, to git. Commits can be thought of as a single collection of changes to anything in the repository - creating a new file, new folder, or renaming a file - if these actions are submitted together, they will live in the same commit in git automatically. 

In addition to this, a commit can be reviewed in git and rolled back if necessary. If a commit is reverted, all changes that were in the commit are undone. Commits in version control make it easy for developers to review and understand work that was done.

###What are the best practices for commit messages?

The best practices for writing commit messages are that the first letter should be capitlized, the message itself should be less than 50 characters long, and the imperative verb form should be used. 
The imperative verb form is used because it makes sense when developing a program. If another developer were to read your message and see it written in imperative verb form, they would easily understand what the commit would do. This is opposed to simply writing what you did yourself in the commit. This allows for better collaborative develpment.

You can also use the body to further explain the rationale for the changes and provide a description of the new behavior over the old behavior of the code. For the body, it is best to keep it less than or equal to 72 characters, with spaces between paragraphs.

###What does the HEAD^ argument mean?

`HEAD^` actually refers to the last commit. `HEAD` refers to the current commit and `HEAD~3`, `HEAD~4`, `HEAD~5` are the 3rd, 4th, and 5th commit respectively. Using these terminologies allow developers to easily revert back or look back on previous commits.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three stages of a git change are "working", "staged", and "commit". To move a file or directory into the working stage, simply choose the working directory to point git at it. You can check the status of the git changes so far at any point by entering "git status". 

At the "working" stage, git tracks the directory and files that you are currently working on and modifying. To move files or folders into the "staged" stage of a git change, after you've made changes, enter "git add [file/folder]" to add the file/folder to be "staged". 

At the "staged" stage of a git change, git is tracking all the changes that are being primed for the next commit. 

Finally at the "commit" stage, git tracks and saves all of the changes that were from the "staged" files and keeps them collected in a save point called a "commit" that can be undone and reviewed. To move a file into the "commit" stage, simply enter "git commit -m "[message]"" and git will save all the changes that were made from the "staged" stage into a commit.

###Write a handy cheatsheet of the commands you need to commit your changes?

##### -- Committing Changes Commands --

`git pull [remote] [branch]`
Downloads the updated version of the working directory

`git status`
Checks the status of the current branch

`git checkout -b [new-branchname]`
Creates a new branch

`git add [file/folder]`
Adds file/folder to be staged for a commit

`git commit -m "[message]"`
Commits the staged changes to current branch

##### --[Additional] Pushing Changes to Remote Server --

`git checkout master`
Switches to master branch

`git pull origin master`
Updates master branch from remote server

`git checkout [new-branchname]`
Switches to new branch ready to be pushed to master

`git merge master`
Merges changes from master into the new branch

`git push origin [new-branchname]`
Pushes changes from the new branch to the remote server (Requires authentification)

`git branch -d [new-branchname]`
Deletes the new branch

###What is a pull request and how do you create and merge one?

A pull request is a submission of changes to a repository. Pull requests allow for changes to be reviewed before they are merged into a specified branch and serves as a form of protection for working code in the master branch.

Pull requests require that your code is already pushed to a remote repository by using `git push orgin [new-branchname]`. 

You can then create a pull request by going to the branch that has the changes on Github and click "Compare & pull request". To merge a pull request, simply follow the pull request process on Github and click "Merge Pull Request". 

Finally confirm the merge by clicking "Confirm Merge Pull Request".

###Why are pull requests preferred when working with teams?

Pull requests are preferred when working in teams because they ensure that there is a protective layer of code review before every merge to the master repo. 

In professional development settings, a developer other than the person doing the pull request will review the pull request before it is merged. This is to ensure that glitchy or bad code isn't merged into the Master repo. This also keeps the code in the Master repo functional and working.
