# Hypersomnia admin shell

## Setup

1. Modify ``ADDRESS`` file to point to your SSH user on the remote server e.g. ``ADDRESS="ubuntu@my-hypersomnia-server.com"``
2. Execute ``./sync_repo``. This will setup essential scripts on the remote server.
3. Now you can execute ``./servers_update ``, ``./servers_restart`` and other administrative tasks. All files without extension are your public interface.

If you're setting up for the first time, call ``./servers_update`` to automatically download the latest binary and launch the dedicated server and the masterserver.

## Server configuration

Use ``~/.config/Hypersomnia/user/config.force.lua`` to configure both the masterserver and the dedicated server (it's the same binary).
Unlike ``user/config.lua``, which is used to both read and store user settings (possibly applied when the server is running), ``user/config.force.lua`` will _never_ be overwritten by the game when it quits.

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

### ``./sign_and_upload_last_builds``

If you want to publish to Steam, do this before calling this script:

- Call ``./steamcmd.sh +login mylogin`` just once to login to Steam.
- Add ``export UPLOAD_TO_STEAM=1`` right before calling ``./sign_and_upload_last_builds``.
- Also add ``export STEAM_LOGIN=mylogin`` as it will be needed when calling ``steamcmd.sh``, but it won't prompt you for password again.

