##########################################################
# ****** This script is ONLY for Ubuntu 16.04 LTS ****** #
##########################################################

########## Basic Tools ##########

sudo apt-get install htop
sudo apt-get install dos2unix
sudo apt-get install parallel

sudo apt-get install git-core
# git config --global user.name "AndrewKuo"
# git config --global user.email "andrewkuogs@gmail.com"
# git config --global color.ui auto
# git config --global color.branch auto
# git config --global color.status auto
# git config --global push.default simple

sudo apt-get install vim
##############################################
# source: https://github.com/leomao/pika-vim #
##############################################
# cd
# git clone --depth=1 https://github.com/andrewkgs/.pika-vim.git
# cd .pika-vim/
# ./deploy.py

sudo apt-get install tmux
############################################
# source: https://github.com/gpakosz/.tmux #
############################################
# cd
# git clone https://github.com/andrewkgs/.tmux.git
# ln -s -f .tmux/.tmux.conf
# cp .tmux/.tmux.conf.local .
# sudo mv PowerlineSymbols.otf /usr/local/share/fonts
# fc-cache -vf /usr/local/share/fonts/
# sudo apt-get install fonts-powerline

sudo apt-get install openssh-server
# vim /etc/ssh/sshd_config
# sudo service ssh restart


############ Python & CUDA Setup ############

# Download specified CUDA driver package
CUDA_REPO_PKG=cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
sudo wget -O ${CUDA_REPO_PKG} https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/${CUDA_REPO_PKG} 
# Register driver package on your machine
sudo dpkg -i ${CUDA_REPO_PKG}
sudo apt-get update
# install CUDA driver
sudo apt-get install cuda-drivers
sudo apt-get install cuda=9.0.176-1
# Register & install CuDNN library
CUDNN_REPO_PKG=libcudnn7_7.1.4.18-1+cuda9.0_amd64.deb
wget https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64/${CUDNN_REPO_PKG}
sudo dpkg -i ${CUDNN_REPO_PKG}
sudo apt install nvidia-cuda-toolkit
sudo apt-get update
sudo apt-get install -y python3-pip
# upgrade pip
sudo pip3 install --upgrade pip
sudo pip3 install virtualenv

########## pip Module Installation ##########

# deep learning framework
sudo pip3 install tensorflow-gpu
sudo pip3 install torch==0.4.1
sudo pip3 install torchvision
sudo pip3 install tensorboardX
sudo pip3 install keras

# other pip toolkit
sudo pip3 install pandas
sudo pip3 install imageio
sudo pip3 install opencv-contrib-python
sudo pip3 install jupyter
sudo pip3 install scikit-learn
sudo pip3 install scikit-image
