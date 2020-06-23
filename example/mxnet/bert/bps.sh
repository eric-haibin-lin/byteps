python3.7 ~/byteps/launcher/dist_launcher.py --worker-hostfile localhost --server-hostfile localhost \
  --scheduler-ip 172.31.8.236 --scheduler-port 12345 \
  --username ec2-user --env ENV1:1 --env ENV2:2 --env NVIDIA_VISIBLE_DEVICES:0,1,2,3,4,5,6,7 \
  --env BYTEPS_FORCE_DISTRIBUTED:1 \
  --env FI_EFA_ENABLE_SHM_TRANSFER:1 \
  --env MXNET_GPU_MEM_POOL_RESERVE:10 \
  --env MXNET_SAFE_ACCUMULATION:1 \
  "echo this is $DMLC_ROLE; python3.7 ~/byteps/launcher/launch.py \
  python3.7 /home/ec2-user/byteps/example/mxnet/bert/run_pretraining_bps.py \
     --num_steps 1000000 --model bert_24_1024_16 \
     --total_batch_size 8 \
     --max_seq_length 128 \
     --max_predictions_per_seq 20 \
     --synthetic_data --dtype float16 \
     --data /home/ec2-user/byteps/example/mxnet/bert/run_pretraining_bps.py \
     --data_eval /home/ec2-user/byteps/example/mxnet/bert/run_pretraining_bps.py \
     --log_interval 10 \
     --verbose \
     --lr 1e-4 --accumulate 1 --comm_backend bps"

# aws s3 sync s3://sagemaker-hpo/data/imagenet/pass-through/ ~/data/pass-through/
  # --env DMLC_ENABLE_RDMA:zmq \
