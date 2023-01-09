# Hypersomnia admin shell

## Setup

1. Modify ``ADDRESS`` file to point to your SSH user on the remote server e.g. ``ADDRESS="ubuntu@my-hypersomnia-server.com"``
2. Execute ``./sync_repo``. This will setup essential scripts on the remote server.
3. Now you can execute ``./servers_update ``, ``./servers_restart`` and other administrative tasks. All files without extension are your public interface.

If you're setting up for the first time, call ``./servers_update`` to automatically download the latest binary and launch the dedicated server and the masterserver.

## Server configuration

Use ``remote-shell/user/config.force.lua`` to configure both the masterserver and the dedicated server (it's the same binary).

The entire ``remote-shell/user`` folder, along with the config inside, will be copied to Hypersomnia server's ``user`` folder (``hypersomnia/user``) upon ``./servers_update``.


### Sensitive config variables

You don't have to put e.g. a rcon password into ``config.force.lua``.
Use the following dotfiles:

```
~/.rcon_password
~/.discord_webhook_url
~/.telegram_webhook_url
```

to setup sensitive variables for the server. Just paste the value, e.g. ``echo "1234" > ~/.rcon_password``.
Restart the server and now 1234 is your server's RCON password.

You can implement other sensitive fields yourself with the ``read_password`` function from inside ``config.force.lua``.

## Folder structure

The files in ``remote-shell`` are what gets sent to the remote server upon ``./sync_repo``.
These are never executed on your local machine.
They're called directly on the server in response to your commands.

You're only supposed to use the executable files without extension in the repository's folder - these are your public interface that lets you control the server from your local machine, e.g.:

``./servers_update``

``./servers_restart``

``./sign_and_upload_last_builds``
