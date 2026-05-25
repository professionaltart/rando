# Point ComicTagger (https://github.com/comictagger/comictagger/) to Fakevine (https://github.com/ComicTools/fakevine/)
# Requires current CT development branch build to use --tpb-detection 

# fakevine location
$fakevine = "http://dockerhost:8463"
# fakevine APIkey
$fvApiKey = "Lorem Ipsum"
# ComicTagger location
$comictagger = (Get-Command comictagger).source
# path to comic library/files to be processed; --glob allows processing of wildcards here
$library = "P:\ath\to\comics\"

# 'default' CT flags I've found reliable:
& $comictagger -1isofat cr --tags-write cr,cix --use-publisher-filter --source comicvine --comicvine-key $fvApiKey --comicvine-url $fakevine --cv-use-series-start-as-volume --tpb-detection --glob $library

# uses cover hashing - found lots of false matches in the past
# & $comictagger -1isofat cr --tags-write cr,cix --use-publisher-filter --source comicvine --comicvine-key $fvApiKey --comicvine-url $fakevine --cv-use-series-start-as-volume --tpb-detection --enable-quick-tag --url https://hasher.nerdfirehurricane.com --glob $library
