if [ $# -lt 1 ]
then
echo "Usage: devops01b.sh -volumes -cpu -ram network -all"
echo "OPTIONS"
echo "-volumes     List the number of volumes and the % that is used."
echo "-cpu         List the number of CPUs/cores and the information about it"
echo "-ram         List the quantity of memory in the system"
echo "-network     Provides the network information"
echo "-all         Provides all the system information";
exit 1
fi

while true; 
do
case  "$1" in
volumes)
df -h
;;
cpu)
sysctl -n hw.ncpu
sysctl -n machdep.cpu.brand_string
;;
ram)
sysctl hw.memsize
;;
network)
networksetup -listallhardwareports
;;
all)
bash devops01a.sh
;;
-*) echo "0: $1: unrecognized option" >&2
;;
**) break
;;
esac
shift
done