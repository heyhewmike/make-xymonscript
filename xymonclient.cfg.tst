# Environment settings for the Xymon client.

XYMSRV="0.0.0.0"          # IP address of the Xymon server
XYMSERVERS="127.0.0.1, 172.16.80.1"	# IP of multiple Xymon servers. XYMSRV must be "0.0.0.0".
CONFIGCLASS="$SERVEROSTYPE"     # Default configuration class for logfiles

PATH="/bin:/usr/bin:/sbin:/usr/sbin:/etc"  # PATH setting for the client scripts.
SHELL="/bin/sh"				# Shell to use when forking programs

# You normally don't need to modify anything below here
XYMONDPORT="1984"                   # Portnumber where xymond listens
XYMONHOME="$XYMONCLIENTHOME"       # Directory for the Xymon client files
XYMON="$XYMONHOME/bin/xymon"          # The Xymon client "xymon" utility
XYMONTMP="$XYMONHOME/tmp"             # Where we may store temporary files.
XYMONCLIENTLOGS="$XYMONHOME/logs"     # Where we store the client logfiles

# Options to logfetch, the xymon binary which examines log files for recent changes.
LOGFETCHOPTS=""


# Local Mode (Only) Options
#
# Running the Xymon client in local-config mode will cause threshold evaluation to
# be performed locally rather than sending raw data sent to the Xymon server for
# analysis. Only the processed results will be forwarded to your Xymon server.
# 
# This can also be overridden by adding a "--local" option to xymonclient.sh in
# the $XYMONHOME/etc/clientlaunch.cfg file
LOCALMODE="yes"

# Local config for xymond_client (Ignored when not in local mode)
# This file is in the same format as analysis.cfg(5) on the Xymon server
LOCAL_CLIENTCONFIG="$XYMONHOME/etc/localclient.cfg"

# Local config for logfetch (Ignored when not in local mode)
# If not present, any saved server-side configs will be used
LOCAL_LOGFETCHCFG="$XYMONHOME/etc/logfetch.cfg"

# Local options for xymond_client (Ignored when not in local mode)
LOCAL_CLIENTOPTS=""


# Compatibility settings
HOBBITCLIENTHOME="$XYMONCLIENTHOME"

BBDISP="$XYMSRV"
BBDISPLAYS="$XYMSERVERS"

BBPORT="$XYMONDPORT"
BBHOME="$XYMONHOME"
BB="$XYMON"
BBTMP="$XYMONTMP"
BBCLIENTLOGS="$XYMONCLIENTLOGS"


# The following defines a bunch of commands that BB extensions expect to be present.
# Xymon does not use them, but they are provided here so if you use BB extension
# scripts, then they will hopefully run without having to do a lot of tweaking.

UPTIME="/usr/bin/uptime"
AWK="/usr/bin/awk"
CAT="/usr/bin/cat"
CP="/usr/bin/cp"
CUT="/usr/bin/cut"
DATE="/usr/bin/date"
EGREP="/usr/bin/egrep"
EXPR="/usr/bin/expr"
FIND="/usr/bin/find"
GREP="/usr/bin/grep"
HEAD="/usr/bin/head"
ID="/usr/bin/id"
LN="/usr/bin/ln"
LS="/usr/bin/ls"
MV="/usr/bin/mv"
RM="/usr/bin/rm"
SED="/usr/bin/sed"
SORT="/usr/bin/sort"
TAIL="/usr/bin/tail"
TOP="/usr/bin/top"
TOUCH="/usr/bin/touch"
TR="/usr/bin/tr"
UNIQ="/usr/bin/uniq"
WHO="/usr/bin/who"
WC="/usr/bin/wc -l"
WCC="/usr/bin/wc"
# DF,DFCMD and PS are for compatibility only, NOT USED by the Xymon client
DF="/usr/bin/df -Pk"
DFCMD="/usr/bin/df -Pk"
PS="ps ax"

MAXLINE="32768"
