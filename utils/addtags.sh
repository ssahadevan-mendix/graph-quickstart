# Tag Resources 
aws ec2 create-tags --resources i-inst1 i-inst2 --tags Key=Project,Value=InternalDemo Key=environment,Value=dev Key=Product,Value=graph 
aws ec2 create-tags --resources i-inst1 --tags Key=Component,Value=GraphStudio
aws ec2 create-tags --resources i-inst2 --tags Key=Component,Value=GraphLakeHouse
