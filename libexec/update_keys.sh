sudo curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo rm /etc/apt/sources.list.d/google-cloud.list && sudo tee /etc/apt/sources.list.d/google-cloud.list << EOM
deb http://packages.cloud.google.com/apt google-compute-engine-jessie-stable main
deb http://packages.cloud.google.com/apt google-cloud-packages-archive-keyring-jessie main
EOM
sudo apt-get update -y --fix-missing; sudo apt-get install -y google-cloud-packages-archive-keyring

