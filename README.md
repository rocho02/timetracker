
# Work time tracker for linux

Show each X minute a dialog, what you are doning.

The answers will be written in /home/$USER/timetracker/done.yyyy-mm-dd.log file

# installation

* copy 'timetracker' cron entry to /etc/cron.d
* be sure owner is root and permissions are: 644
* open /etc/cron.d/timetracker with an editor, and change the 
  * user 
  * path for the timetracker.sh script
* run 'sudo service cron restart'


# troubleshooting

## DISPLAY variable
On  my computer the DISPLAY variable must be set to ':1':  export DISPLAY=:1.
Usually it should be export DISPLAY=:0
So try to rewrite it to :0 in timetracker.sh




