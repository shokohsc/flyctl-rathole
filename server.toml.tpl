[server]
bind_addr = "0.0.0.0:42333"
default_token = "%DEFAULT_TOKEN%"

[server.transport]
type = "tcp"
[server.transport.tcp]
keepalive_secs = 5 # Optional. Specify `tcp_keepalive_time` in `tcp(7)`, if applicable. Default: 10 seconds
keepalive_interval = 2 # Optional. Specify `tcp_keepalive_intvl` in `tcp(7)`, if applicable. Default: 5 seconds

[server.services.smtp]
bind_addr = "0.0.0.0:40025"

# [server.services.minecraft-bedrock]
# bind_addr = "fly-global-services:19132"
# type = "udp"
# [server.services.minecraft-java]
# bind_addr = "0.0.0.0:25565"

# [server.services.openvpn-server-udp]
# bind_addr = "fly-global-services:41194"
# type = "udp"
# [server.services.openvpn-server-tcp]
# bind_addr = "0.0.0.0:41194"
# # bind_addr = "0.0.0.0:40443"
