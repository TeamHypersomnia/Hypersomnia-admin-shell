dofile("user/read_password.lua")

return {
  http_client = {
    update_on_launch = false
  },
  unit_tests = {
    run = false
  },
  private_server = {
    master_rcon_password = read_password(".rcon_password"),
    rcon_password = read_password(".rcon_password")
  },
  server = {
    max_client_resyncs = 1000,
	allow_nat_traversal = false
  },
  default_server_start = {
	port = 8412
  }
}
