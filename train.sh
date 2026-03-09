# 生成日期文件夹（例如 nohup_logs/2025-04-20）
LOG_DATE_DIR="nohup_logs/$(date +%Y-%m-%d)"
mkdir -p "$LOG_DATE_DIR"

# 生成带时间戳的日志文件名（例如 14-30-00.log）
LOG_FILE="$LOG_DATE_DIR/$(date +%H-%M-%S).log"

############################# TEST #############################
# python3 legged_gym/legged_gym/scripts/train.py --task=t1 --rl_device cuda:0 --sim_device cuda:0 --num_envs 4
# python3 legged_gym/legged_gym/scripts/train.py --task=d1 --rl_device cuda:0 --sim_device cuda:0 --num_envs 4 --headless
# python3 legged_gym/legged_gym/scripts/train.py --task=M1 --rl_device cuda:1 --sim_device cuda:1 --num_envs 4
# python3 legged_gym/legged_gym/scripts/train.py --task=d1  --headless --rl_device cuda:0 --sim_device cuda:0 --num_envs 1
############################# TEST #############################

###########################    M 1     #######################################
# nohup python3 legged_gym/legged_gym/scripts/train.py \
#     --task=M1 --rl_device cuda:1 --sim_device cuda:1 \
#     --num_envs 4096 --headless > "$LOG_FILE" 2>&1 &
########################### M 1 Resume #######################################
# nohup python3 legged_gym/legged_gym/scripts/train.py \
#     --task=M1 --rl_device cuda:1 --sim_device cuda:1 \
#     --resume --load_run Aug29_11-29-47_ \
#     --num_envs 4096 --headless > "$LOG_FILE" 2>&1 &


###########################    M 2     #######################################
# nohup python3 legged_gym/legged_gym/scripts/train.py \
#     --task=M2 --rl_device cuda:0 --sim_device cuda:0 \
#     --num_envs 4096 --headless > "$LOG_FILE" 2>&1 &

########################### M 2 Resume #######################################
# nohup python3 legged_gym/legged_gym/scripts/train.py \
#     --task=M2 --rl_device cuda:0 --sim_device cuda:0 \
#     --resume --load_run Aug27_20-32-48_ --checkpoint 5800 \
#     --num_envs 4096 --headless > "$LOG_FILE" 2>&1 &


###########################    D 1     #######################################
# nohup python3 legged_gym/legged_gym/scripts/train.py \
#     --task=d1 --rl_device cuda:0 --sim_device cuda:0 \
#     --num_envs 4096 --headless > "$LOG_FILE" 2>&1 &

# nohup python3 legged_gym/legged_gym/scripts/train.py \
#     --task=d1 --rl_device cuda:0 --sim_device cuda:0 \
#     --num_envs 4096 --headless --resume --load_run Sep22_12-19-28_ > "$LOG_FILE" 2>&1 &

# nohup python3 legged_gym/legged_gym/scripts/train.py \
#     --task=d1 --rl_device cuda:0 --sim_device cuda:0 \
#     --num_envs 4096 --headless --resume --load_run Oct16_14-41-30_ > "$LOG_FILE" 2>&1 &

########################### D 1 Resume #######################################
# nohup python3 legged_gym/legged_gym/scripts/train.py \
#     --task=d1 --rl_device cuda:1 --sim_device cuda:1 \
#     --resume --load_run Aug28_15-09-45_ --checkpoint 35700 \
#     --num_envs 4096 --headless > "$LOG_FILE" 2>&1 &

###########################    D 2     #######################################
# nohup python3 legged_gym/legged_gym/scripts/train.py \
#     --task=d2 --rl_device cuda:0 --sim_device cuda:0 \
#     --num_envs 4096 --headless --resume --load_run Jan08_14-14-41_ > "$LOG_FILE" 2>&1 & 
    # Dec26_15-57-02_ 0.64
    # Jan08_14-14-41_

# nohup python3 legged_gym/legged_gym/scripts/train.py \
#     --task=d2 --rl_device cuda:0 --sim_device cuda:0 \
#     --num_envs 4096 --headless > "$LOG_FILE" 2>&1 & 


###########################    D 1_w     #######################################
# nohup python3 legged_gym/legged_gym/scripts/train.py \
#     --task=d1_w --rl_device cuda:0 --sim_device cuda:0 \
#     --num_envs 4096 --headless --resume --load_run Jan19_17-28-21_ > "$LOG_FILE" 2>&1 & 

nohup python3 legged_gym/scripts/train.py \
    --task=d1_w --rl_device cuda:0 --sim_device cuda:0 \
    --num_envs 4096 --headless > "$LOG_FILE" 2>&1 & #

