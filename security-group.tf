resource "yandex_vpc_security_group" "db_sg" {
  name        = "db-security-group"
  description = "Security group for database access in develop environment"
  network_id  = data.yandex_vpc_network.develop.id

  ingress {
    description    = "PostgreSQL"
    port           = 5432
    protocol       = "TCP"
    v4_cidr_blocks = [data.yandex_vpc_subnet.develop.v4_cidr_blocks[0]]
  }

  ingress {
    description    = "Redis"
    port           = 6379
    protocol       = "TCP"
    v4_cidr_blocks = [data.yandex_vpc_subnet.develop.v4_cidr_blocks[0]]
  }

  ingress {
    description    = "SSH"
    port           = 22
    protocol       = "TCP"
    v4_cidr_blocks = [data.yandex_vpc_subnet.develop.v4_cidr_blocks[0]]
  }

  egress {
    description    = "Outgoing traffic"
    protocol       = "ANY"
    v4_cidr_blocks = ["0.0.0.0/0"]
  }
}
