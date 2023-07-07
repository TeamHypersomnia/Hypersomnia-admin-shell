dofile("user/read_password.lua")

return {
  http_client = {
    update_on_launch = false
  },

  unit_tests = {
    run = false
  },

  server_start = {
    port = 8412
  },

  server_private = {
    rcon_password = read_password(".rcon_password"),
    master_rcon_password = read_password(".master_rcon_password"),
    discord_webhook_url = read_password(".discord_webhook_url"),
    telegram_webhook_url = read_password(".telegram_webhook_url")
  },

  server = {
    arena = "de_cyberaqua",
    game_mode = "gun_game",
    server_name = "[PL] arena.hypersomnia.xyz",
    max_client_resyncs = 1000,
    allow_nat_traversal = false,
    suppress_new_community_server_webhook = true
  }
}
