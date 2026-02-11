. ./env.sh

echo "#Usage: $0 1   to Start or $0 0 to Stop " 

# Check if 'a' is greater than or equal to 'b'
if [ "$1" -eq 1 ]; then
   echo "Start " 
    aws ec2 start-instances \
    --instance-ids i-inst1

    aws ec2 start-instances \
    --instance-ids i-inst2

else
    echo "Stop"
    aws ec2 stop-instances \
    --instance-ids i-inst1

    aws ec2 stop-instances \
    --instance-ids i-inst2
fi

