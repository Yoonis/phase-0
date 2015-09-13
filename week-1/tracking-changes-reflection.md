Open the file in sublime. Copy the following questions in it and answer them.

_How does tracking and adding changes make developers' lives easier?_
Tracking and adding changes in an incremental fashion makes it a lot easier for everyone on the project to keep tabs on updates. Also if a new update introduces a bug, it is easy to roll back to the most recent working version of your code while you work on patching the bug.

_What is a commit?_
A commit is a staged update on your local git branch that has yet to be pushed to the remote GitHub repo.

_What are the best practices for commit messages?_
Best practice is to use the imperative form. The first line of the message should be under 50 characters to briefly highlight the change. This is followed by a small body copy detailing the change and the reason for the change.

_What does the HEAD^ argument mean?_
It is the last, most recently staged commit on your current branch.

_What are the 3 stages of a git change and how do you move a file from one stage to the other?_
First you save your edits. You can see them using the command Git status. Then you add them to staging. Then you commit and include a message about the change in your commit while adhering to the best practice style guide. Lastly, you push the commit to the remote GitHub repo. 
(When pushing, you might see a message about configuring git to push updates from all local branches, or coniguring git to the intuitive simple config where only the one local branch you're working on will be updated. This is a one time message that I saw since I am new to git.)

_Write a handy cheatsheet of the commands you need to commit your changes?_
1. Git status
2. Git add
3. Git commit -m "message"
4. Git push origin "your branch"

_What is a pull request and how do you create and merge one?_
First, ensure your local and remote repos are in line. (git co master -> git pull)
Then merge from master into your branch.
Push from your local branch to your remote branch.
Now navigate to your master GitHub page, select pull request, and merge the commits. 
Lastly, delete the feature branch if it has been fully merged. Doing git fetch -p will update your local repo with the branch deletion as well.

Why are pull requests preferred when working with teams?
They allow you to pull in team member's changes and merge any potential conflicts.