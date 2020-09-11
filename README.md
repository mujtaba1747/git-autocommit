# git-autocommit
A bash script to automate pushing changes to github
Employs System Call (inotifywait) to recursively watch a directory for changes.
Triggers Commands to push changes when they are detected.

This script can be easily modified for any VCS / Cloud provider which provides command-line interface.

Supporting Medium Article : https://medium.com/@mujtaba1747/how-to-learn-linux-and-git-25b18a815778

Before Using : 
1. Make sure git or whatever VCS you're using is configured properly (SSH keys) and you already have cloned the target repo to your local machine.
2. Make sure you have inotify-tools installed. (if not, Ubuntu users can type : sudo apt-get install inotify-tools) 
3. Make sure you have the correct path of the cloned repo in the script.

Important Links for reference : 
1. To add ssh-keys : https://docs.github.com/en/enterprise/2.18/user/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key

2. Whats is /dev/null : https://linuxhint.com/what_is_dev_null/

3. Video Demonstration of Project : https://www.youtube.com/watch?v=2Gru7rnZRZA
