#!/bin/bash
#This script made for macos apple silicon. 
#For cases that require download and save linux/amd64 Docker image on ARM M1 platform.

while getopts "hl:d:" opt
do
  case "$opt" in
    h) #Show help
      echo ""
      echo "Usage: ./docker_image_downloader.sh -l [list] -d [dir]"
      echo ""
      echo "Docker image downloader for linux/amd64 platform"
      echo ""
      echo "  -l File name with docker images"
      echo "  -d Dir where images have to be saved"
      exit 0
      ;;
    l) #Pass file with list of Docker images
      file_list=${OPTARG}
      ;;
    d) #Output dir
      output_dir=${OPTARG}
      ;;
    \?) #If no options
      echo "Error: Invalid option -"${OPTARG}"" >&2
      exit 1
      ;;
  esac
done

#If options without arguments
[ -z ${file_list} ] || [ -z ${output_dir} ] && echo "Error: Required argument(s) not provided" >&2 && exit 1

mkdir ${output_dir}

list=$(cat ${file_list}) #Images

for n in ${list}
do
        docker pull --platform linux/amd64 ${n} #Pull images from list
	image=${n}
	filename=$(echo "$image" | sed 's/.*\/\([^:]*\).*/\1/')_$(echo "$image" | sed 's/.*:\(.*\)/\1/') #Create file name for image from image name and tag
	docker save ${n} -o ${output_dir}/${filename}.tar #Save image to tar
done
tar cvzf ${output_dir}.tar.gz ${output_dir} #Gzip everything
