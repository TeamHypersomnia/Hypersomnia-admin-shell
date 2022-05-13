function read_password(filename)
  local rcon_file = io.open(os.getenv("HOME") .. "/" .. filename) 

  if rcon_file then
    local password = rcon_file:read()
    rcon_file:close()
    return password
  end

  return ""
end
