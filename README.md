# WyLinux <!-- omit in toc -->

- [1. Copy/Paste](#1-copypaste)
- [2. Install Oh-my-posh](#2-install-oh-my-posh)
- [3. Install git](#3-install-git)
- [4. Install Dev Tools](#4-install-dev-tools)
- [5. Install SSH Server](#5-install-ssh-server)
- [6. Install VS Code](#6-install-vs-code)
- [7. Install Docker](#7-install-docker)
- [8. Install Chrome](#8-install-chrome)
- [9. Install XRDP](#9-install-xrdp)



## 1. Copy/Paste
``` bash
echo 'Installing Git...'
sudo apt install -y git
echo 'Adding global user info to git...'
git config --global user.name "Jason Wyckoff"
git config --global user.email "jason@jasonwyckoff.com"
echo '... done.'
echo '-------------------------------------------------------------------'



git clone https://github.com/jwyckoff/WyLinux.git ~/wy
chmod +x ~/wy/*.sh
chmod +x ~/wy/installs/*.sh
. ~/wy/add-alias.sh

```

``` bash
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y


sudo apt install vim -y 
```

## 2. Install Oh-my-posh

See [https://github.com/jwyckoff/WyPosh/](https://github.com/jwyckoff/WyPosh/blob/main/README.md#install-on-linux)

## 3. Install git

``` bash
sudo apt install -y git
echo 'Adding global user info to git...'
git config --global user.name "Jason Wyckoff"
git config --global user.email "jason@jasonwyckoff.com"
echo '... done.'
```
## 4. Install Dev Tools

``` bash
sudo apt install -y gh
sudo apt install -y google-chrome-stable
```

## 5. Install SSH Server

``` bash
sudo apt install -y openssh-server
```

## 6. Install VS Code

``` bash
sudo apt install -y software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code
```

## 7. Install Docker

See [Docker Website](https://docs.docker.com/engine/install/ubuntu/#set-up-the-repository).

## 8. Install Chrome

See [WikiHow](https://www.wikihow.com/Install-Google-Chrome-Using-Terminal-on-Linux).

``` bash
sudo apt update
sudo apt upgrade
sudo apt install curl
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome-stable_current_amd64.deb

curl -fSsL https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor | sudo tee /usr/share/keyrings/google-chrome.gpg > /dev/null
echo deb [arch=amd64 signed-by=/usr/share/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt update
sudo apt install -y google-chrome-stable

```


## 9. Install XRDP
(from [here](https://linux.how2shout.com/ubuntu-22-04-remote-desktop-access-from-windows-11-or-10/#:~:text=Connect%20Ubuntu%2022.,-o4%20remotely%20using&text=There%20type%20%E2%80%9CRemote%20Desktop%20Connection,on%20the%20%E2%80%9CConnect%E2%80%9D%20button.))
``` bash
sudo apt update
sudo apt install xrdp -y

# start it
sudo systemctl start xrdp

# enable it
sudo systemctl enable xrdp

# check status
systemctl status xrdp

# Open port 3389 in the firewall
sudo ufw allow from any to any port 3389 proto tcp

```


## 10. Install Powershell
``` bash
sudo apt install -y wget apt-transport-https software-properties-common
wget -q https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt update
sudo apt install -y powershell

```
