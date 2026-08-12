. ./env.sh

echo "#Usage: $0 1   to Start or $0 0 to Stop " 

# Check if 'a' is greater than or equal to 'b'
if [ "$1" -eq 1 ]; then
   echo "Start " 
    aws ec2 start-instances \
    --instance-ids $instanceId1

    aws ec2 start-instances \
    --instance-ids $instanceId2

   # Wait to ensure that instances are up 
   sleep 3m

   . ./remote-exec.sh 1

else
    echo "Stop"

    echo "Stop Graph Studio "
    . ./remote-exec.sh 0


    aws ec2 stop-instances \
    --instance-ids $instanceId1

    aws ec2 stop-instances \
    --instance-ids $instanceId2 

fi

