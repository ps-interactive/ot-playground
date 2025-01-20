#!/bin/sh

# Add default route via the router
#ip route del default via 192.168.3.254
#ip route add default via 192.168.3.1
ip route add 192.168.2.0/24 via 192.168.3.254

# Run the main application process
exec "$@"
