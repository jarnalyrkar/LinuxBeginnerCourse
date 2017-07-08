#!/bin/bash

# System-info page in HTML with help from BASH

TITTEL="Systeminformasjon for $HOSTNAME"
TIDSPUNKT=$(date +"%x %X %Z")
TIME_STAMP="Generert $TIDSPUNKT av $USER"

report_uptime (){
	cat <<-END
		<H2> Oppetid </H2>
		<PRE>$(uptime)</PRE>
		END
	return
}

report_disk_space (){
	cat <<-END
		<H2> Diskbruk </H2>
		<PRE>$(df -h)</PRE>
		END
	return
}

report_home_space (){
	cat <<-END
		<H2> Home Diskbruk</H2>
		<PRE>$(du -sh /home/*)</PRE>
		END
	return
}

report_network (){
	cat <<-END
		<H2> Nettverk</H2>
		<PRE>$(ifconfig -a)</PRE>
		<PRE>$(cat /etc/resolv.conf)</PRE>
		END
	return
}

cat<<END
<HTML>
	<HEAD>
		<TITLE> $TITTEL </TITLE>
	</HEAD>
	<BODY>
		<H1> $TITTEL </H1>
		<P> $TIME_STAMP </p>
		$(report_uptime)
		$(report_disk_space)
		$(report_home_space)
#		$(report_network)
	</BODY>
</HTML>
END
