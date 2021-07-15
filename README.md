
# Work time tracker for linux

Show each X minute a dialog, what you are doning.

The answers will be written in /home/$USER/timetracker/done.yyyy-mm-dd.log file

# installation

* copy 'timetracker' cron entry to /etc/cron.d
* open /etc/cron.d/timetracker with an editor, and change the 
  * user 
  * path for the timetracker.sh script
* run 'sudo service cron restart'


