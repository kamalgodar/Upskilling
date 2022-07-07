# 🌟 A Quick Guide on GIT 🌟

### GIT
> - distributed version control system
> - record changes to our files
> - helps in recalling of any version of those files at any time
> - easy collaboration on a project
> - facilitates to meet clients' changing demands


### GitHub | GitLab | Bitbucket :
> - online services that hosts our projects
> - share our code with other developers
> - facilitates re-uploading of the edits and merging to the main codebase


### Terminologies:
*Working area:*  
> contains modified files and folders that are not committed

*Staging area: (Index)*
> snapshot of working area that contains all current changes and ready to be committed files

*Committed area:*
> files commited is added to project history <br>
> commits are checkpoints/safe points <br>
> can browse created commits and restore previous versions of files

>*local* - our local computer <br>
*remote* - online server


### File States:
*Untracked files:*
> new file added to working directory but not tracked by Git yet

*Modified files:*
> changes made to the tracked file but not staged yet for commit

*Staged files:*
> untracked and modified files that are staged and is going to become part of next commit

*Commited files:*
> Changes added to project history as part of commit

###  GIT Commands
#### 🌟 Global Configuration

```bash
$ git config --global user.name "Shiva Ram Godar"
$ git config --global user.email "kamalgodar9244@gmail.com"
```
> sets global git username and email <br>
> names that gets associated with commits you make 

```bash
$ git config --list
```
> lists the global configuration

#### 🌟 Cloning repository

```bash
$ git clone <repo_link>
```
> copies an existing remote Git repository and saves it to our local computer


```bash
$ git clone -b <branch_name> <repo_link>
```
> -b (alias for --branch) option means you are fetching all branches but checking out to the branch you chose
clone a specific branch <br>
> specific branch becomes the configured local branch for git push and git pull <br>
> check using 'git branch', 'git branch -a'


```bash
$ git clone --single-branch --branch <branch_name> <repo_link>
```
> clone exclusively one branch (version 1.17.10 or more) <br>
> check using 'git branch', 'git branch -a'


#### 🌟 Repository Initialization
```bash
$ git init
```
> initializes git repository in current folder <br>
> done while creating new project; tracks changes to all files and folders

```bash
$ git init -b primary
```

> By default, git init create a branch named either master or main and changing it to primary


```bash
$ git status
```
> status of the working directory and see current branch, tracked and untracked files, staged and unstaged changes <br>
> red --> unstaged files <br>
> green --> staged files


```bash
$ git log
```
> shows logs of different commits


```bash
$ git log --oneline
```
> shows logs of commits in condensed form


#### 🌟 Staging and Commiting

```bash
$ git add .
```
> adds all newly created and modified files in working area to staging area


```bash
$ git add <file_name>
```
> adding a single file


```bash
$ git commit -m "commit message"
```
> commits all staged files <br>
> saving our changes locally only and setting a checkpoint


```bash
$ git commit -am "commit messsage"
```
> stage and commit directly

```bash
$ git diff
```
> compares what is in working directory with what is in staging area
> shows changes made but not yet staged


```bash
$ git diff --staged/--cached
```
> compares staged changes to our last commit
> shows staged contents that will go into our next commit



#### 🌟 Revert, Reset, Checkout

```bash
$ git checkout <file_name>
$ git checkout .
```
> discard changes in working tree

```bash
$ git reset HEAD <file_name>
$ git reset HEAD .
```
> unstaging the file to working tree <br>
> reverting staged changes


```bash
$ git reset <commit_code>
$ git reset HEAD~1
$ git reset HEAD~3
$ git reset --soft HEAD~1
```
> removing commit from `local repository` permanently <br>
> reset allows us to remove latest n number of commits but not the specific commit <br>

> modes of reset: soft, mixed (default), hard <br>
> --mixed: resets index area but not the working tree <br>
> --soft: keeps all changes in staging area <br>
> --hard: resets index and working tree completely removing all commits

```bash
$ git log --oneline
$ git revert <commit_code>
```
> undoing the commit from `remote repository` <br>
> doesn't remove commit, but undo the commit and makes a new commit (saying revert is done) <br>
> history of commit is unchanged unlike local revert


#### 🌟 Branching

```bash
$ git branch <branch_name>
```
>creates new branch named branch_name

```bash
$ git checkout <branch_name>
```
> switches from current branch to branch_name

```bash
$ git checkout -b <branch_name>
```
> create and directly switch to branch_name (-b means --branch)

```bash
$ git branch
```
>shows current chosen branch

```bash
$ git branch -a
```
> shows all branch and current branch

```bash
$ git branch -m <new_branch_name>
```
> rename the current branch

```bash
$ git branch -m <old_branch_name> <new_branch_name>
```
> rename a local branch

```bash
$ git branch -d <local_branch_name>
```
> deletes a local branch only if the branch has been merged in its upstream branch

```bash
$ git branch -D <local_branch_name>
```
> forcefully deletes the local branch (irrespective of its merge status)

```bash
$ git push origin --delete <remote_branch_name>
```
> deletes a remote branch

*Remember:<br> 
Before you delete a branch, you should checkout of the branch you are going to delete. <br>
Before you switch the branch, the changes in your current branch must be commited or stashed.*


#### 🌟 Stash
```bash
$ git stash
```
> saves all modifications since last commit and temporaily stores  separately <br>
> state of project is reverted to last commit <br>
> can create as many stashes as needed

```bash
$ git stash list
```
> list all stashes and shows the stash name

```bash
$ git stash show -p <stash_name>
```
> view content of each stash
> stash name: stash@{1}

```bash
$ git stash apply <stash_name>
```
> to fetch our changes from stash and apply them to current version of project

#### 🌟Merge

```bash
$ git checkout master
$ git merge <branch_name>
```
> integrates the feature branch with all of its commits to the development (master) branch <br>
> to do this you must be in master branch and make sure master branch is up-to-date with latest version

> Example: <br>
(merging feature branch into dev branch) <br>
git checkout dev <br>
git fetch --> updates local dev branch <br>
git merge feature --> merge your feature



#### 🌟 Push/Pull
```bash
$ git pull origin master
```
> pull get updates from remote repo and applies them locally
> may cause conflicts that need to be solved manually.

>git pull = git fetch + git merge <br>
git fetch --> gets changes made by other collaborators into local machine but doesn't merge into code you are working on local machine

```bash
$ git remote add origin <repo_link>
$ git push -u origin master
```
> push only upload changes to remote that are committed locally





