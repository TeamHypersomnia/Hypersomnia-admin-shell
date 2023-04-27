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
    rcon_password = read_password(".rcon_password"),
    discord_webhook_url = read_password(".discord_webhook_url"),
    telegram_webhook_url = read_password(".telegram_webhook_url")
  },
  server = {
    server_name = "arena.hypersomnia.xyz",
    max_client_resyncs = 1000,
    allow_nat_traversal = false,
    suppress_new_community_server_webhook = true
  },
  server_solvable = {
    current_arena = "de_cyberaqua"
  },
  default_server_start = {
    port = 8412
  }
}
