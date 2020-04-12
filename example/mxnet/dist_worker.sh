# now you are in docker environment
export BYTEPS_FORCE_DISTRIBUTED=1
export NVIDIA_VISIBLE_DEVICES=0,1,2,3
export DMLC_NUM_WORKER=1
export DMLC_ROLE=worker
export DMLC_NUM_SERVER=1
export DMLC_WORKER_ID=0
export DMLC_PS_ROOT_URI=172.31.10.108
export DMLC_PS_ROOT_PORT=12345

python3 /home/ubuntu/byteps/launcher/launch.py  python3 ~/byteps/example/mxnet/train_gluon_mnist_byteps.py
