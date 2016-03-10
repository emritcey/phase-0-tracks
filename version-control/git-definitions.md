# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful? 

Version control is the process which allows a coder (or anyone else viewing the files) to view the entire history of revisions to one or more files.  This provided timeline includes edits made by other coders as well.  Version control is useful because it allows the editor to keep track of all changes made over time to a project and makes pinpointing bugs very quick and efficient. 

* What is a branch and why would you use one?

A branch is a pathway inside of a repository where a coder can make certain edits to the master copy which can later be merged or not. Branches are used to easily track and sort different types of changes across your coding process. 
git checkout -b [branch name]

* What is a commit? What makes a good commit message?

A commit is a marker of changes. When you make changes to a document and want to place a time stamp on when you made those changes, you commit it using git. The commit message should be detailed and descriptive about the edits that your commit is marking. The clearer this is, the easier it is to come back later and track down any mistakes. 
git add file.md
git commit -m "Descriptive message"

* What is a merge conflict?
A merge conflict is when the files that you are merging from different branches onto the master branch file do not fit together easily. For instance if two people are working off of the same master file, and both wrote something different on line 10, there would be a merge conflict when they attempted to merge their two files. This stops coders from writing over each other accidently. 


