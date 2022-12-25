# Docker images downloader. It downloads images and saves to dir.
1. It processes the `-h`, `-l` and `-d` options using the getopts command.
2. It checks if the required arguments (`file_list` and `output_dir`) were provided, and shows an error message if either of them is not provided.
3. It creates the output directory specified by the `output_dir` argument.
4. It reads the list of Docker images from the file specified by the `file_list` argument, and downloads each image using the docker pull command.
5. It saves each image to a .tar file using the docker save command, and creates the file name for the image using the filename variable.
6. It creates a .tar.gz archive of the output directory using the tar command.