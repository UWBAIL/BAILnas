#!/bin/bash
set -x
cd /mnt/BAILnas/NAS
printf "Hello, $USER.\n"
echo "Creating folders for user: $1, folder name: $2"

if [ -d "BAILnas/NAS/$2.p" ]
then
	echo "$2.p already exists"
else
	zfs create "BAILnas/NAS/$2.p"
	zfs set "quota=$3" "BAILnas/NAS/$2.p"
	chown $1:BAIL_member "$2.p"
	chmod 770 "$2.p"
	touch "./$2.p/.windows"
	getfacl ./Shaozhen.p | setfacl -b -n -M - "./$2.p"
fi


# if [ -d "BAILnas/NAS/$2.p/0share" ]
# then
        # echo "$2.p/0share already exists"
# else
        # zfs create "BAILnas/NAS/$2.p/0share"
        # chown "$1:BAIL_member" "$2.p/0share"
		# chmod 770 "$2.p/0share"
        # touch "./$2.p/0share/.windows"
        # getfacl ./Shaozhen.p/0share | setfacl -b -n -M - "./$2.p/0share"
# fi

if [ -d "BAILnas/NAS/$2.p/0priv" ]
then
        echo "$2.p/0priv already exists"
else
        zfs create "BAILnas/NAS/$2.p/0priv"
        chown "$1:wheel" "$2.p/0priv"
		chmod 770 "$2.p/0priv"
        touch "./$2.p/0priv/.windows"
        getfacl ./Shaozhen.p | setfacl -b -n -M - "./$2.p/0priv"
fi

