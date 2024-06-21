If you already have a working VPS with configured SSH access, skip to [Download AppImage step.](#download-appimage)

## Add an unprivileged user

You'll likely start with a clean VPS with just a root account.
In this case, first add an unprivileged user:

```sh
# This will ask you for password, choose whatever as it won't be used anyway
adduser ubuntu
passwd -d ubuntu
usermod -aG sudo ubuntu
su - ubuntu
```

## Setup SSH

Now we'll setup SSH access.
First generate your SSH keypair, I recommend using ``ssh-ed25519`` algorithm.
Then do this:

```sh
MY_KEY='PUT YOUR PUBLIC KEY HERE'
```

For example (this public key is mine, don't add it unless you want to give me access to your VPS):

```sh
MY_KEY='ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFpBAHe/KyfrmzWcx5LxbAytckcJj2ssIJYAfNdkg318 ubuntu@hypersomnia.xyz'
```

To authorize this key, do this:

```sh
mkdir -p ~/.ssh
chmod 700 ~/.ssh
echo $MY_KEY >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
```

### Disable password login

We want SSH to be the only way to log in to your server.
Backup your ``/etc/ssh/sshd_config`` just in case:

```sh
cp /etc/ssh/sshd_config ./sshd_config.bak
```

The following script will automatically modify the config to disable all options that would enable password logins (so you don't have to edit it manually with ``nano``):

```sh
sudo sed -i '/^PasswordAuthentication/s/^.*$/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo sed -i '/^ChallengeResponseAuthentication/s/^.*$/ChallengeResponseAuthentication no/' /etc/ssh/sshd_config
sudo sed -i '/^UsePAM/s/^.*$/UsePAM no/' /etc/ssh/sshd_config

if ! grep -q "^PasswordAuthentication" /etc/ssh/sshd_config; then
    echo "PasswordAuthentication no" | sudo tee -a /etc/ssh/sshd_config
fi

if ! grep -q "^ChallengeResponseAuthentication" /etc/ssh/sshd_config; then
    echo "ChallengeResponseAuthentication no" | sudo tee -a /etc/ssh/sshd_config
fi

if ! grep -q "^UsePAM" /etc/ssh/sshd_config; then
    echo "UsePAM no" | sudo tee -a /etc/ssh/sshd_config
fi

sudo systemctl restart sshd
```
