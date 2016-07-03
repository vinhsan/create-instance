#!/bin/bash -ex


# LAY ID cua subnet internal  
ID_int_net=`neutron net-list | awk '/int*/ {print $2}'`
echo $ID_int_net

echo "########## Tao may ao ten la vm6969 de kiem tra ##########"
nova boot vm6969 --image cirros-0.3.2-x86_64 --flavor 1 --security-groups default --nic net-id=$ID_int_net


echo "########## Hoan thanh viec tao may ao ##########"
sleep 10