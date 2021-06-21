#!groovy
hosts = "host1,host2,host3,host4"

hosts_list = hosts.split(',')

for (i in hosts_list) {
    println(i)
}
