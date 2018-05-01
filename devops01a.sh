echo "Volumes Information"
df -h
echo -en '\n'
echo "Number of CPUs/Cores"
sysctl -n hw.ncpu
echo -en '\n'
echo "Information about the CPUs/Cores"
sysctl -n machdep.cpu.brand_string
echo -en '\n'
echo "Memory Size"
sysctl hw.memsize
echo -en '\n'
echo "My mac address on en1"
#networksetup -listallhardwareports
ifconfig en1 | grep ether
echo -en '\n'
echo "My Private IP Address on en1"
#ifconfig |grep inet
ipconfig getifaddr en1
echo -en '\n'
echo "My Public IP Address on en1"
#curl whatismyip.org #can be
curl ipecho.net/plain
echo -en '\n'