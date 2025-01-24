#!/bin/sh

# Add default route via the router
ip route add 192.168.2.0/24 via 192.168.3.254

rm -f /tmp/.X0-lock
rm -f /home/engineer/entrypoint.sh

# Run the main application process
exec "$@"
