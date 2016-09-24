#!/bin/bash

yum install -y epel-release
yum install -y puppet
rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
service puppet start
puppet apply -e 'include runpuppet' --modulepath=/vagrant
