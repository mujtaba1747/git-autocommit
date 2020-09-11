# git-autocommit
A bash script to automate pushing changes to github

It Employs inotifywait (a Linux System Call from the inotify family) to recursively watch a directory for changes.
Triggers Commands to push changes when they are detected.

This script can be easily modified for any VCS / Cloud provider which provides command-line interface.

Supporting Medium Article : https://medium.com/@mujtaba1747/how-to-learn-linux-and-git-25b18a815778

Before Using : 
1. Make sure git or whatever VCS you're using is configured properly (SSH keys) and you already have cloned the target repo to your local machine.
2. Make sure you have inotify-tools installed. (if not, Ubuntu users can type : sudo apt-get install inotify-tools) 
3. Make sure you have the correct path of the cloned repo in the script.

Important Links for reference : 
1. To add ssh-keys : https://docs.github.com/en/enterprise/2.18/user/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key

2. Installing inotify-tools and more info : https://github.com/inotify-tools/inotify-tools/wiki

3. Whats is /dev/null : https://linuxhint.com/what_is_dev_null/

4. Video Demonstration of the Project : https://www.youtube.com/watch?v=2Gru7rnZRZA

How to stop the script from running in the background
- If you run the script using ./watch.sh, it will terminate as soon as one presses Ctrl+C or Exit the Terminal Session.
- If you run the script in the background (which is convinient) using ./watch.sh &

  The Ampersand sign (&) makes it run in the background
  
  Once you're done using the script, it becomes tricky to stop the script. One way is to restart/logging out which is easy but not convinient.
  
  Here is the smart method : 
  
  Use ps aux | grep watch, find the PID of the script and then killing it using kill PID_of_script
  
  After that you'll have to run ps aux | grep inotify, find the PID of inotify and then killing it using kill command.
