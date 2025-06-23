# Hypersomnia admin shell

## Setup

1. Modify ``ADDRESS`` file to point to your SSH user on the remote server e.g. ``ADDRESS="ubuntu@my-hypersomnia-server.com"``
2. Execute ``./sync_repo``. This will setup essential scripts on the remote server.
3. Now you can execute ``./servers_update ``, ``./servers_restart`` and other administrative tasks. All files without extension are your public interface.

If you're setting up for the first time, call ``./servers_update`` to automatically download the latest binary and launch the dedicated server and the masterserver.

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

