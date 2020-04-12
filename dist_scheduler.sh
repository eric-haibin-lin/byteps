# now you are in docker environment
export BYTEPS_FORCE_DISTRIBUTED=1
export DMLC_NUM_WORKER=1
export DMLC_ROLE=scheduler
export DMLC_NUM_SERVER=1
export DMLC_PS_ROOT_URI=172.31.35.7
export DMLC_PS_ROOT_PORT=12345

python3 /home/ubuntu/byteps/launcher/launch.py
