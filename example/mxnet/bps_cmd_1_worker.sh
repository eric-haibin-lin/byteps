python3.7 ~/byteps/launcher/dist_launcher.py --worker-hostfile workers --server-hostfile workers \
  --scheduler-ip 172.31.26.106 --scheduler-port 12345 \
  --username ec2-user --env ENV1:1 --env ENV2:2 --env NVIDIA_VISIBLE_DEVICES:0,1,2,3,4,5,6,7 \
  --env DMLC_ENABLE_RDMA:fabric --env BYTEPS_FORCE_DISTRIBUTED:1 \
  --env FI_EFA_ENABLE_SHM_TRANSFER:1 \
  'echo this is $DMLC_ROLE; python3.7 ~/byteps/launcher/launch.py \
  python3.7 /home/ec2-user/byteps/example/mxnet/train_imagenet_bps.py --rec-train /home/ec2-user/data/pass-through/train-passthrough.rec \
    --rec-train-idx /home/ec2-user/data/pass-through/train-passthrough.idx \
    --rec-val /home/ec2-user/data/pass-through/val-passthrough.rec \
    --rec-val-idx /home/ec2-user/data/pass-through/val-passthrough.idx \
    --model resnet50_v1b --mode hybrid \
    --lr 1.2 --lr-mode cosine --num-epochs 120 --batch-size 192 --num-gpus 8 -j 8 \
    --warmup-epochs 5 --dtype float16 \
    --use-rec --last-gamma --no-wd --label-smoothing \
    --save-dir params_resnet50_v1b_best \
    --logging-file resnet50_v1b_best.log'

# aws s3 sync s3://sagemaker-hpo/data/imagenet/pass-through/ ~/data/pass-through/
