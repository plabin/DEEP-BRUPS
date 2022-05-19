#! /bin/bash   
  while getopts d:w: flag
do
    case "${flag}" in
        d)domain=${OPTARG};;
        w)wordlist=${OPTARG};;
    esac
done
  if [[ `wget -S --spider $domain 2>&1 | grep 200` ]]; then
 
