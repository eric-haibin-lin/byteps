BYTEPS_TRACE_ON=1 \
BYTEPS_TRACE_START_STEP=10 \
BYTEPS_TRACE_END_STEP=20 \
BYTEPS_TRACE_DIR=./traces \
NVIDIA_VISIBLE_DEVICES=0,1 \
DMLC_WORKER_ID=0 \
DMLC_NUM_WORKER=1 \
DMLC_ROLE=worker \
DMLC_NUM_SERVER=1 \
DMLC_PS_ROOT_URI=127.0.0.1 \
DMLC_PS_ROOT_PORT=9000 \
BYTEPS_LOCAL_RANK=0 \
BYTEPS_LOCAL_SIZE=1 \
BYTEPS_RANK=0 \
BYTEPS_SIZE=1 \
bash run_mnist_gluon.sh --benchmark=1
