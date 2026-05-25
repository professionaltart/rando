# Tail Mylar logs (re-use pre-existing function to tail Mylar logs), 
# looking for CRC or other errors that would stop post-processing.

# set Mylar's log directory:
$MylarLogs = "C:\path\to\mylar3\logs\mylar.log"

# using ripgrep (highlights selected queries in red text)
Get-Content -Path $MylarLogs -last 5 -wait  | rg -e 'CRC check failed' -e 'failed condition check'

# using pure pwsh (highlights selected queries with white background)
## use if RipGrep not installed
# Get-Content -Path $MylarLogs -last 5 -wait  | sls -pattern 'CRC check failed','failed condition check'
