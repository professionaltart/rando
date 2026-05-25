# Tail Mylar logs to keep an eye on what it's doing.
## (if kept in ~, saves terminal wordiness/having to change to Mylar's dir first)

# set Mylar's log directory:
$MylarLogs = "C:\programdata\mylar3\logs\mylar.log"

# using bat(cat) to prettify/format the output in the terminal 
Get-Content -Path $MylarLogs -last 5 -wait  | bat --paging=never -l log
