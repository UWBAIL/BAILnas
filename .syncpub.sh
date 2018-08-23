#!/bin/bash

cd /mnt/BAILnas/Pub
pathLOG=".synclog$(date +%Y%m%d%H%M%S).txt"
declare -a synclistpub=(
				"[To All]-0docs"
				"[code sharing]-0code"
				"[Group Meeting]-0meeting"
				"[Software]-0software"
                )
declare -a synclistpriv=(
				"Jingjiang-Jayson-jingjiang"
				"Zhongdi-Zhongdi-Zhongdi"
				"Ricky-Ricky-Ricky"
				)
declare -a synclistshare=(
				"Anthony-Anthony-Anthony"
				"Diana-Diana-Diana"
				"Fupeng-Fupeng-Fupeng"
				"Guest-0guest-BAILguest"
				"Jayson-Jayson-jingjiang"
				"Jenny-Jenny-Jenny"
				"Kanheng-Kanheng-Kanheng"
				"Kevin-Kevin-Kevin"
				"Mitch-Mitch-Mitch"
				"Nhan-Nhan-nhanle"
				"Peijun-Peijun-Peijun"
				"Qinqin-Qinqin-Qinqin"
				"Ricky-Ricky-Ricky"
				"Shaozhen-Shaozhen-szsong"
				"Shuyuan-Shuyuan-Shuyuan"
				"Wei-Wei-Wei"
				"Yining-Yining-Yining"
				"Yuxuan-Yuxuan-yuxuan"
				"Zhongdi-Zhongdi-Zhongdi"
				)
if [ "$1" = 1 ]
then
	for i in "${synclistpub[@]}"
	do
		pathSOR=$(echo $i | cut -f1 -d-)
		pathTAR=$(echo $i | cut -f2 -d-)
		printf "\n=====Synchronizing $pathSOR to $pathTAR=====\n" | tee -a $pathLOG
		rsync -rhltDW --no-p --delete --stats "/mnt/BAILnas/rsyncpub/BAILpub/Pub/$pathSOR/" "/mnt/BAILnas/NAS/$pathTAR" | tee -a $pathLOG
		chown -R szsong:BAIL_member $pathTAR | tee -a $pathLOG
	done
fi

if [ "$2" = 1 ]
then
	printf "\n=====Synchronizing private folders=====\n\n\n" | tee -a $pathLOG
	for i in "${synclistpriv[@]}"
	do
		pathSOR=$(echo $i | cut -f1 -d-)
		pathTAR=$(echo $i | cut -f2 -d-)
		userTAR=$(echo $i | cut -f3 -d-)
		printf "=====Synchronizing $pathSOR to $pathTAR=====" | tee -a $pathLOG
		rsync -rhltDW --no-p --delete --stats "/mnt/BAILnas/rsyncpub/BAILpri/$pathSOR.Pri/" "/mnt/BAILnas/NAS/$pathTAR.p/0priv" | tee -a $pathLOG
		chown -R "$userTAR:wheel" "$pathTAR.p/0priv" | tee -a $pathLOG
	done
fi

if [ "$3" = 1 ]
then
	printf "\n=====Synchronizing shared folders=====\n\n\n" | tee -a $pathLOG
	for i in "${synclistshare[@]}"
	do
		pathSOR=$(echo $i | cut -f1 -d-)
		pathTAR=$(echo $i | cut -f2 -d-)
		userTAR=$(echo $i | cut -f3 -d-)
		printf "\n=====Synchronizing $pathSOR to $pathTAR=====\n" | tee -a $pathLOG
		rsync -rhltDW --no-p --delete --stats --exclude "/0priv" --exclude "/archive" "/mnt/BAILnas/rsyncpub/BAILpub/Pub/$pathSOR/" "/mnt/BAILnas/NAS/$pathTAR.p" | tee -a $pathLOG
		chown -R "$userTAR:BAIL_member" "$pathTAR.p" | tee -a $pathLOG
		chown -R "$userTAR:wheel" "$pathTAR.p/0priv" | tee -a $pathLOG
	done
fi

chown szsong:wheel $pathLOG | tee -a $pathLOG
printf "rsync task done.\n" | tee -a $pathLOG
#touch /mnt/BAILnas/Pub/.synccronexcuted$(date +%Y%m%d%H%M%S) && chown szsong .synccronexcuted*
#sudo /mnt/BAILnas/Pub/.syncpub.sh 1 1 1 |& tee /mnt/BAILnas/Pub/.synclog$(date +%Y%m%d%H%M%S).txt
#cd /mnt/BAILnas/Pub && ./.syncpub.sh 0 0 0 |& tee .synclog$(date +%Y%m%d%H%M%S).txt && chown szsong .synclog*
