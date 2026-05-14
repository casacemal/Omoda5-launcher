
Log()
{
	echo "$*"
}

show_help()
{
	Log "Usage: `basename $0` OPTITION... bytes..."
	Log "OPTITION"
	Log "   -t, --target        [test|power|system|audio|illum|tuner|vehicle|diag|hmi|service|pss|reflash|bap|eol|vrm]"
	Log "   -u, --upstream      oriented to upstream"
	Log "   -d, --downstream    oriented to downstram"
	Log "   -m, --member        specific member"
	Log "   -h, --help          show help"
	exit -1;
}


if [ $# -lt 4 ]; then
	show_help;
fi

while getopts "t:udm:" opt; do
	case $opt in
		t)
			CLIENT=$OPTARG
			;;
		u)
			MEMBER=respond
			;;
		d)
			MEMBER=request
			;;
        m)
            MEMBER=$OPTARG
            shift
            ;;
		*)
			show_help
			;;
	esac
done
DATA=$4

dbus-send --system --type=signal /com/yfve/ivi com.yfve.ivi.$CLIENT.$MEMBER array:byte:$DATA
