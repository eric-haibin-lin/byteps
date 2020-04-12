export NVIDIA_VISIBLE_DEVICES=0,1,2,3  # gpus list
export DMLC_WORKER_ID=0 # your worker id
export DMLC_NUM_WORKER=1 # one worker
export DMLC_ROLE=worker

# the following value does not matter for non-distributed jobs
export DMLC_NUM_SERVER=1
export DMLC_PS_ROOT_URI=10.0.0.1
export DMLC_PS_ROOT_PORT=1234

# python3.7 $HOME/byteps/launcher/launch.py  python3.7 $HOME/byteps/example/mxnet/train_gluon_mnist_byteps.py
python3.7 $HOME/bytedance-bps/launcher/launch.py  python3.7 $HOME/bytedance-bps/example/mxnet/train_gluon_mnist_byteps.py
