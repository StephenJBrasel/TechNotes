:: sets the editor to Visual Studio Code, requires Visual Studio Code
git config --global core.editor "code --wait"

:: aliases
:: 	`git b` == `git branch`
git config --global alias.b "branch"
git config --global alias.branches "branch -la"
git config --global alias.bsort "branch -la --sort=-committerdate"
git config --global alias.co "checkout"
	:: autocorrect
git config --global alias.commmit "commit"
	:: contribution is longer (but shorter than its full command) to discourage use:
	:: it's a nice stat, but not an accurate reflection of code involvement.
git config --global alias.contribution "shortlog -sn --all --no-merges" 
git config --global alias.diffiles "diff --name-only"
git config --global alias.discard "restore *"
git config --global alias.forest "log --all --decorate --oneline --graph"
git config --global alias.pop "stash pop"
git config --global alias.pusha "push --all"
git config --global alias.pulla "pull --all"
git config --global alias.praise "blame"
git config --global alias.rv "remote -v"
git config --global alias.st "status"
git config --global alias.tree "log --decorate --oneline --graph"

:: 'git fetch' (`git pull`, as well) will also remove stale tracking branches from local repository.
git config --global fetch.prune true 

:: set --color-words as the default when showing differences.
git config --global color.diff always

::region Optional Destructive Settings
:: Remove the @REM's in a region to uncomment the code, 
:: Copy and paste that code into a LINUX terminal (not Command Prompt or Powershell) (until I figure out how to run this in cmd),
:: Then re-comment the commands.

::region Global GitIgnore
:: the following creates a global-level .gitignore that contributes to every gitignore in the system
:: useful if multiple projects need to ignore the same files, like .idea in Intellij or .vscode
:: WARNING: This will override the ~/.gitignore file if any exists.

@REM cd ~
@REM ignore= "# Personal Settings
@REM .vscode
@REM .idea"
@REM echo "$ignore" > .gitignore
@REM git config --global core.excludesfile "~/.gitignore"
::endregion Global GitIgnore


::region Commit Message Template
:: the following configures a default template for every git commit
:: WARNING: This will override the ~/.gitmessage.git-commit file if any exists.

@REM cd ~
@REM template="type(scope): subject #meta [keep header<50chars]

@REM multi-line description of the details of changes
@REM - [ ] If practical, use markdown
@REM See (Git Commit Message Guidelines)[https://gist.github.com/abravalheri/34aeb7b18d61392251a2] for examples.

@REM [Progresses/Closes/etc.] Task_Reference"
@REM echo "$template" > .gitmessage.git-commit
@REM git config --global commit.template ~/.gitmessage.git-commit
::endregion Commit Message Template

::endregion Optional Destructive Settings

:: show the configuration
git config --list
