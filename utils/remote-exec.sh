echo "ssh to remote instance and running commands"

pemFile="your.pem"
sshUser="user"
instance="ecXYZ"

echo $sshUser $instance
loginString="${sshUser}@${instance}"
echo "${loginString}"

if [ "$1" -eq 1 ]; then
echo "Start ..."

ssh -i $pemFile $loginString bash << ENDSSH
set -e
cd ~/bin
. ./start-graph-studio.sh
ENDSSH
else
echo "Stop ... "
ssh -i $pemFile $loginString bash << ENDSSH
set -e
cd ~/bin
. ./stop-graph-studio.sh
ENDSSH

fi

