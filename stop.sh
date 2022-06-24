# Stops all running scripts in the background
ps aux | grep "watch.sh" | awk '{print $2}' | xargs kill
