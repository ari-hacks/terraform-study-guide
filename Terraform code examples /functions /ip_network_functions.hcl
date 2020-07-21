#######
#IP Network Functions 
#######

#cidrhost calculates a full host IP address for a given host number within a given IP network address prefix.
cidrhost(prefix, hostnum)
cidrhost("10.12.127.0/20", 16)
#10.12.112.16
cidrhost("10.12.127.0/20", 268)
#10.12.113.12
cidrhost("fd00:fd12:3456:7890:00a2::/72", 34)
#fd00:fd12:3456:7890::22

#cidrnetmask converts an IPv4 address prefix given in CIDR notation into a subnet mask address.
cidrnetmask(prefix)
cidrnetmask("172.16.0.0/12")
#255.240.0.0

#cidrsubnet calculates a subnet address within given IP network address prefix.
cidrsubnet(prefix, newbits, netnum)
cidrsubnet("172.16.0.0/12", 4, 2)
#172.18.0.0/16
cidrsubnet("10.1.2.0/24", 4, 15)
#10.1.2.240/28
cidrsubnet("fd00:fd12:3456:7890::/56", 16, 162)
#fd00:fd12:3456:7800:a200::/72

