# run ". install_trid.sh"(the dot at the beginning is very important because it allows the script to export the environment variable)
if [ -x trid ] && [ -f triddefs.trd ]; then
	echo "trid is already installed, I'll just set the environment variables!";
else
	wget "https://mark0.net/download/trid_linux_64.zip" "https://mark0.net/download/triddefs.zip"
	unzip trid_linux_64.zip
	unzip triddefs.zip
	chmod +x trid
	rm trid_linux_64.zip readme.txt triddefs.zip
fi

export LC_ALL=C
PATH=$PATH:$PWD

