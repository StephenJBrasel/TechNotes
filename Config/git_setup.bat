:: sets the editor to Visual Studio Code, requires Visual Studio Code
git config --global core.editor "code --wait"

:: aliases
:: 	`git b` == `git branch`
git config --global alias.b "branch"
git config --global alias.branches "branch -la"
git config --global alias.bsort "branch -la --sort=-committerdate"
git config --global alias.co "checkout"
	:: contribution is longer (but shorter than its full command) to discourage use:
	:: it's a nice stat, but not an accurate reflection of code involvement.
git config --global alias.contribution "shortlog -sn --all --no-merges" 
git config --global alias.diffiles "diff --name-only"
git config --global alias.discard "restore *"
git config --global alias.forest "log --all --decorate --oneline --graph"
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

:: show the configuration
git config --list
