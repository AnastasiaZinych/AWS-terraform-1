#!/bin/bash
git clone https://github.com/tfutils/tfenv.git ~/.tfenv
echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(tfenv init -)"' >> ~/.bashrc
source ~/.bashrc
ln -s ~/.tfenv/bin/*/usr/local/bin

#!/bin/bash
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install packer


# bash installation.sh