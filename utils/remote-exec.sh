echo "ssh to remote instance and running commands"

pemFile=$pemFile
sshUser=$myUser
instance=$myInstance

echo $sshUser $instance
loginString="${sshUser}@${instance}"
echo "${loginString}"

if [ "$1" -eq 1 ]; then
echo "Start ..."

ssh -i $pemFile $loginString bash << ENDSSH
set -e
su anzo
anzo
cd ~/bin
ls -al
ls -al ./start-graph-studio.sh
. ./start-graph-studio.sh
ENDSSH
else
echo "Stop ... "
ssh -i $pemFile $loginString bash << ENDSSH
set -e
su anzo
anzo
cd ~/bin
ls -al ./stop-graph-studio.sh
. ./stop-graph-studio.sh
ENDSSH

fi

