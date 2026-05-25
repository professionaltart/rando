# Use cURL to grab latest copy of local CV database archive
## lazy-enablement

$source = "https://mick.nerdfirehurricane.com/localcv/localcv.zip"
# download to where FakeVine can see it, or a temp location first
$destination = "P:\ath\to\fakevine\localcvdb"
$date = Get-Date -Format "yyyyMMdd"

curl $source -o $destination\localcvdb-$($date).zip

# manually extract archive to make sure dv isn't in use before overtwriting?
# Confirm switch will prompt user input to extract, and again to overwrite
Expand-Archive -Path $destination\localcvdb-$($date).zip -DestinationPath $destination -Force -Confirm
