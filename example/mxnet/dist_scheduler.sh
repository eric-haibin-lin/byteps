# now you are in docker environment
export BYTEPS_FORCE_DISTRIBUTED=1
export DMLC_NUM_WORKER=1
export DMLC_ROLE=scheduler
export DMLC_NUM_SERVER=1
export DMLC_PS_ROOT_URI=127.0.0.1
export DMLC_PS_ROOT_PORT=12345

# python3.7 $HOME/bytedance-bps/launcher/launch.py
# python3.7 $HOME/byteps/launcher/launch.py
DMLC_ENABLE_RDMA=lffabric python3.7 $HOME/byteps/launcher/launch.py
