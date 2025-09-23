resource "yandex_vpc_security_group" "db_sg" {
  name        = "db-security-group"
  description = "Security group for database access"
  network_id  = data.yandex_vpc_network.default.id  

  ingress {
    description    = "PostgreSQL"
    port           = 5432
    protocol       = "TCP"
    v4_cidr_blocks = [data.yandex_vpc_subnet.default.v4_cidr_blocks[0]]  
  }

  ingress {
    description    = "Redis"
    port           = 6379
    protocol       = "TCP"
    v4_cidr_blocks = [data.yandex_vpc_subnet.default.v4_cidr_blocks[0]]  
  }

  ingress {
    description    = "SSH"
    port           = 22
    protocol       = "TCP"
    v4_cidr_blocks = [data.yandex_vpc_subnet.default.v4_cidr_blocks[0]]  
  }

  egress {
    description    = "Outgoing traffic"
    protocol       = "ANY"
    v4_cidr_blocks = ["0.0.0.0/0"]
  }
}
