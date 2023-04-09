[server]
bind_addr = "0.0.0.0:42333"
default_token = "%DEFAULT_TOKEN%"

[server.services.smtp]
bind_addr = "0.0.0.0:40025"

[server.services.http]
bind_addr = "0.0.0.0:40080"
[server.services.https]
bind_addr = "0.0.0.0:40443"

[server.services.openvpn-udp]
bind_addr = "fly-global-services:41194"
type = "udp"
[server.services.openvpn-tcp]
bind_addr = "0.0.0.0:41194"

[server.services.minecraft-java]
bind_addr = "0.0.0.0:25565"
[server.services.minecraft-bedrock]
bind_addr = "fly-global-services:19132"
type = "udp"