#!/bin/bash
if [[ $# -ne 1 ]]; then
  echo "Too many argumnets: Please only pass one movie or use \"NAME OF MOVIE\" for spaces." >&2
  exit 1
fi
## Get the IMDB id
moviename=$(echo $1 | sed 's/ //g')
curl -s -H "Content-type: application/json" 'http://www.omdbapi.com/?t='${moviename}'&apikey=1ea479ad' | cut -f3 -d"," > movierating.tmp
cat movierating.tmp
if [ -s movierating.tmp ]
then
echo "movie name or rating not available"
fi
