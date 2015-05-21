*Sketch 3 Tips and Shortcuts*

A = artboard
U = rounded rec
R = rectangle 
O = Oval

hold shift + O + spacebar to move and match oval with another ... or any other space

CMD + G = group / Shift + CMD + G = ungroup


TOP MENU BAR

Union (⌘⌥U): Select two shapes, overlap them and click on the Union tool. The two shapes will merge into a single fluid shape.

Subtract (⌘⌥S): Select two shapes, overlap them and click the Subtract tool. The shape that was over the other one will “bite out” a piece from it.

Intersect (⌘⌥I): Select two shapes, overlap them and click Intersect. The remaining shape will be the area where both elements overlapped.

Difference (⌘⌥X): Select two shapes, overlap them and click Difference. This tool will work exactly the opposite way as Intersect since is the common overlapped area the one that is deleted. 


*iOS/Xcode*

Check if the full Xcode package is already installed:

$ xcode-select -p

If you see:

/Applications/Xcode.app/Contents/Developer


CMD + 1 to view files quick when in Xcode

$ xcode-select --install

Click “Install” to download and install Xcode Command Line Tools.

Verify that you’ve successfully installed Xcode Command Line Tools:

$ xcode-select -p
/Library/Developer/CommandLineTools

verify that gcc is installed:

$ gcc --version



*Homebrew on MacOS*

Install Homebrew

To download install Homebrew run the install script on the command line as below and let the script do its thing:

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

After installing and as suggested in the command line, to check for any issues with the install run:

brew doctor

To search for an application:

brew search

To install

brew install <application-name>

To list all apps installed by Homebrew

brew list

To remove an installed application

brew remove <application-name>

To update Homebrew

brew update

To see what else you can do

man brew

Where does Homebrew install stuff …. in the Cellar

/usr/local/Cellar/


*RUBY ON RAILS + RVM + POSTGRESql*

RVM install:

$ \curl -L https://get.rvm.io | bash -s stable --ruby

If you already have RVM installed, update it to the latest version and install Ruby:

$ rvm get stable --autolibs=enable
$ rvm install ruby
$ rvm --default use ruby-2.2.0

You can use rvm implode to remove all traces of RVM from your system.

*RubyGems*

Check the installed gem manager version. You may see:

$ gem -v
2.2.2

$ gem update --system

 RVM Gemsets

Not all Rails developers use RVM to manage gems, but many recommend it.

Display a list of gemsets:

$ rvm gemset list

gemsets for ruby-2.2.0
=> (default)
   global

Only the “default” and “global” gemsets are pre-installed.

If you get an error “rvm is not a function,” close your console and open it again.


RVM’s Global Gemset

See what gems are installed in the “global” gemset:

$ rvm gemset use global
$ gem list

git --version
gems -v
ruby -v
rails -v


*PostgreSQL*

Use the easy-to-install Max OS X Postgres.app if you’d like to use PostgreSQL.

To create a new Rails application to use PostgreSQL:

$ rails new myapp --database=postgresql

The --database=postgresql parameter will add the pg database adapter gem to the Gemfile and create a suitable config/database.yml file.


MORE RAILS TIPS / HELP => http://railsapps.github.io/installrubyonrails-mac.html




*Unix Command Refresher*

    cd - think 'change directory:' change the current working directory. Remember that ~ is a special symbol that always represents your "home" directory.
	
    ls - think 'list:' shows a list of all files/folders in the current directory. With the -a flag, also shows hidden files and folders.
	
    mkdir - think 'make directory:' creates a new directory with the specified name.
	
    touch - updates the "last modified" timestamp on a file to now. Also creates an empty file if the filename specified doesn't exist.
	
    mv - think 'move:' moves a file or directory to a new location. This also makes it a convenient way to rename files and folders.
	
    rm - think 'remove:' deletes the file(s)/folder(s) specified. (rm -r .git to remove a repo)


*Git Commands*

	git --version.

	git init [project_name] - initializes a new repository. If project_name is provided, it creates a new project directory with that name. If not, it initializes a repository in the current directory.

    git add - adds files to the repository so that Git knows to track their changes.

    git commit - commits all added files to the repository as a change. With the -a flag, commits all changes to all tracked files. With the -m flag, allows you to specify a commit message directly on the command line instead of in your default editor.

    git config - allows you to make configuration changes to Git. With the --global flag, makes these changes available across your entire system.

    git status - show the current status of the git repository, including if there are ay uncommitted changes and whether or not any of our changes have been put in the staging area.
	
  
	git log - Show us a chronological log of all of our commits to the current repository.
    
	git checkout - "check out" a different version of the code from the one you're currently looking at.
	
    git diff - create a "diff" view to demonstrate what has changed between two different versions of your repository.
	
*BRANCHING*
	
	git branch branchname - create a new branch named branchname.
	git checkout branchname - switch to the branch named branchname.
	git checkout -b branchname - create a new branch named branchname and switch to that branch.
	git branch - list all branches in the current repository and indicate which branch you're currently in.
	git branch -D branchname - delete the branch named branchname from the repository.
	git - rename branch (local and remote)
	
	#rename local branch
	git branch -m old-branch-name new-branch-name

	#GITHUB delete remote branch with old name
	git push origin :old-branch-name

	#GITHUB create remote renamed branch and setup remote branch tracking (-u flag)
	git push -u origin new-branch-name
	
	git merge branchname - merge the history from branchname into the current branch.
	
*CLONING*

	git clone - create a new repository that is a clone of a remote repository.
	git remote - list all remote repositories associated with the current repository.
	git remote add - add a new remote repository to the current repository
	git push origin branchname -  sends a cloned branch with changes back to the master 
	
	git remote add origin https://github.com/user/repo.git
	# Set a new remote

	git remote -v
	# Verify new remote
	# origin  https://github.com/user/repo.git (fetch)
	# origin  https://github.com/user/repo.git (push)
	
	#I've got my own copy of the repository hosted at http://tommysgitstuff.com/git_basics/cool_stuff.git.  
	#What command would you use to add my copy of the repository as a remote? Give the remote the name "tommy."
	git remote add tommy http://tommysgitstuff.com/git_basics/cool_stuff.git
	
	#Now that you've got my remote added to your repository, what command would you run to pull my latest changes from master?
	git pull tommy master
	
	http://nvie.com/posts/a-successful-git-branching-model/
	
	http://jeffkreeftmeijer.com/2010/why-arent-you-using-git-flow/