#! /bin/sh

get_ip(){
	export lo=`ifconfig lo 2>/dev/null|grep -w inet|cut -f 10 -d ' '`
	export wlan=`ifconfig wlan0 2>/dev/null|grep -w inet|cut -f 10 -d ' '`
	export eth=`ifconfig eth0 2>/dev/null|grep -w inet|cut -f 10 -d ' '`
	export ap=`ifconfig ap0 2>/dev/null|grep -w inet|cut -f 10 -d ' '`
	export hostname=`cat /etc/hostname 2>/dev/null`
	for i in  `echo $wlan $eth $ap $hostname $lo`
	do
		if [ ! -z $i ]
		then
			echo $i
			break
		fi
	done
}

get_public_ip(){
	curl ifconfig.me
}

get_proxychains(){
	proxychains4 -q curl ifconfig.me
}

get_ip_with_glob(){
	echo "🌐 `get_ip`"
}

get_public_ip_with_glob(){
	echo "🌐 `get_public_ip`"
}

$1
