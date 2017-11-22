sudo apt-get install python-pip python-dev python-virtualenv

export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-0.11.0-cp27-none-linux_x86_64.whl

virtualenv --system-site-packages ~/tensorflow

source ~/tensorflow/bin/activate

easy_install -U pip

pip install --upgrade matplotlib opencv-python $TF_BINARY_URL

