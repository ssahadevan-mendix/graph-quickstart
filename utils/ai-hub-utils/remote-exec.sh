echo "ssh to remote instance and running commands"

pemFile="kp.pem"
sshUser="ubuntu"
instance="aihubip"

echo $sshUser $instance
loginString="${sshUser}@${instance}"
echo "${loginString}"

if [ "$1" -eq 1 ]; then
echo "Start ..."

ssh -i $pemFile $loginString bash << ENDSSH
set -e
cd ~/bin
ls -al
ls -al ./start-ai-hub.sh
. ./start-ai-hub.sh
ENDSSH
else
echo "Stop ... "
ssh -i $pemFile $loginString bash << ENDSSH
cd ~/bin
ls -al ./stop-ai-hub.sh
. ./stop-ai-hub.sh
ENDSSH

fi

