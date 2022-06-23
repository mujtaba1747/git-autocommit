# Stops all processes "watch.sh" in the machine
ps aux | grep "watch.sh" | awk '{print $2}' | xargs kill
