#/bin/bash
#instance_ID=$1
#sh /root/scripts/elb.sh
#ssh root@172.0.3.67
app_name=$1

#ansible-playbook -i /etc/ansible/roles/elb/inventory /etc/ansible/roles/elb/dettach.yml


#echo run deploy code
app_name2=( $(eval echo ${app_name[@]}) )

echo $app_name1
IFS=,
for i in ${app_name[@]}
do

if [ $i == "webapp_angular" ] || [ $i == "doctorinsta-front" ]
then
	ansible-playbook -i /etc/ansible/roles/elb/inventory  /etc/ansible/roles/deploy.prod/site.yml --tags=untagged --extra-vars "app=${i}"
#echo "this is" $i
#else
else
ansible-playbook -i /etc/ansible/roles/elb/inventory  /etc/ansible/roles/deploy.prod/site.yml --extra-vars "app=${i}"
fi
done

#attach elb
#ansible-playbook -i /etc/ansible/roles/elb/inventory /etc/ansible/roles/elb/attach.yml 
