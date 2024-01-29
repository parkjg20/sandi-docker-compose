#!/bin/bash
# ','로 구분된 포트 번호를 여러 개 입력할 수 있다.
# ex) sh ./lsof-kill.sh 9100,9200,9300,9400,9500,9600,9700,9800,9900,8900


# 사용자로부터 포트 번호 입력 받기
read -p "Enter the port number: " port

# 해당 포트에서 실행 중인 모든 프로세스의 PID 찾기
pids=($(lsof -t -i:$port))

# PID 목록이 비어있지 않은지 확인
if [ ${#pids[@]} -ne 0 ]; then
    echo "Found processes on port $port: ${pids[@]}"
    
    # 각 PID에 대해 반복하며 프로세스 종료
    for pid in "${pids[@]}"; do
        echo "Killing process with PID: $pid"
        kill $pid

        if [ $? -eq 0 ]; then
            echo "Process with PID $pid killed successfully."
        else
            echo "Failed to kill process with PID $pid."
        fi
    done
else
    echo "No process found on port $port."
fi
