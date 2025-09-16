[webservers]
%{ for server in webservers ~}
${server.name} ansible_host=${server.network_interface[0].nat_ip_address} fqdn=${server.fqdn}
%{ endfor ~}

[databases]
%{ for server in databases ~}
${server.name} ansible_host=${server.network_interface[0].nat_ip_address} fqdn=${server.fqdn}
%{ endfor ~}

[storage]
%{ for server in storage ~}
${server.name} ansible_host=${server.network_interface[0].nat_ip_address} fqdn=${server.fqdn}
%{ endfor ~}
