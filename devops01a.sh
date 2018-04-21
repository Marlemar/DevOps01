echo "Volumes Information"
df -h
echo "Number of CPUs/Cores"
sysctl -n hw.ncpu
echo "Information about the CPUs/Cores"
sysctl -n machdep.cpu.brand_string
echo "Memory Size"
sysctl hw.memsize
echo "My mac address on en1"
#networksetup -listallhardwareports
ifconfig en1 | grep ether
echo "My Private IP Address on en1"
#ifconfig |grep inet
ipconfig getifaddr en1
echo "My Public IP Address on en1"
#curl whatismyip.org #can be
curl ipecho.net/plain ; echo