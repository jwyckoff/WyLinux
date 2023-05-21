# WyLinux


``` bash
apt install git
git clone https://github.com/jwyckoff/WyLinux.git ~/wy
chmod +x ~/wy/*.sh
. ~/wy/add-alias.sh

```

``` bash
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y
```
## Installs

``` bash
apt install git
apt install gh
sudo apt-get install openssh-server
```

## Install git
``` bash
sudo apt install -y git
echo 'Adding global user info to git...'
git config --global user.name "Jason Wyckoff"
git config --global user.email "jason@jasonwyckoff.com"
echo '... done.'
```
## Install Dev Tools

``` bash
sudo apt install -y gh


```

## Install VS Code
``` bash
sudo apt install -y software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code
```

## Install Docker
See [Docker Website](https://docs.docker.com/engine/install/ubuntu/#set-up-the-repository).
