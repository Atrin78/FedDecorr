device_id=0
MODEL=mobilenetv2
ALPHA=0.05
PARTITION=noniid
WD=1e-5

RHO=0.05

CUDA_VISIBLE_DEVICES=$device_id python3 main.py \
    --dataset=cifar10 \
    --model=$MODEL \
    --approach=fedsam \
    --lr=0.01 \
    --weight_decay=$WD \
    --epochs=10 \
    --n_comm_round=100 \
    --n_parties=10 \
    --partition=$PARTITION \
    --alpha=$ALPHA \
    --logdir='./logs/' \
    --datadir='./data/' \
    --ckptdir='./models/' \
    --rho=$RHO
