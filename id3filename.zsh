#!/bin/zsh

# @author Leandro Silva
# @copyright 2018 - 2020 Leandro Silva (http://grafluxe.com)
# @license MIT

if [ -z "$1" ]; then
  echo "id3-to-filename (v2.0.0)"
  echo "https://github.com/grafluxe/id3-to-filename\n-"
  echo "Usage: id3filename [<file> | <directory>]"
  exit
fi

color_red="\033[0;31m"
color_green="\033[0;32m"
color_none="\033[0m"

id3_to_filename() {
  file=$1
  dir=$2
  ext=$(echo ${file##*.})

  data=$(mdls "$file" | tr -s " " | tr "\n" "\`")
  artist=$(echo $data \
    | sed 's/.*kMDItemAuthors = (` \([^`]*\).*/\1/' \
    | sed 's/^"//' \
    | sed 's/"$//')
  title=$(echo $data \
    | sed 's/.*kMDItemTitle = "\([^`]*\).*/\1/' \
    | sed 's/"$//')
  new_name="$artist - $title.$ext"

  echo $color_red$(basename "$file") $color_none"->"$color_green $new_name
  mv "$file" "$dir/$artist - $title.$ext"
}

if [ -d "$1" ]; then
  # directory
  for file in "$1"/*.mp3;
    do id3_to_filename "$file" "$1"
  done
elif [ -f "$1" ]; then
  # file
  if [ ${1##*.} != "mp3" ]; then
    echo "Only mp3 files are supported"
  else
    id3_to_filename "$1" "$(dirname "$1")"
  fi
else
  echo "\"$1\" does not exist";
fi
