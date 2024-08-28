read -p "Enter the branch name: " branch

echo 'Switch branches to '$branch;


directories=(
    "$HOME/workspace/sandi/src/snicorp-sni-api"
    "$HOME/workspace/sandi/src/snicorp-sdc-cos"
    "$HOME/workspace/sandi/src/snicorp-sdc-bds"
    "$HOME/workspace/sandi/src/snicorp-sdc-fms"
    "$HOME/workspace/sandi/src/snicorp-sdc-iot"
    "$HOME/workspace/sandi/src/snicorp-sdc-mbs"
    "$HOME/workspace/sandi/src/snicorp-sdc-pnc"
    "$HOME/workspace/sandi/src/snicorp-sdc-pts"
    "$HOME/workspace/sandi/src/snicorp-sdc-pus"
)

for dir in "${directories[@]}"; do
    echo "===== Checking out $branch in $dir..."
    cd $dir

    # 브랜치가 존재하는지 확인
    if git rev-parse --verify "$branch" > /dev/null 2>&1; then
        # 브랜치가 존재하면 체크아웃
        echo "Switching to existing branch '$branch'"
        git checkout "$branch"
    elif git ls-remote --heads origin "$branch" | grep "$branch" > /dev/null; then
        # local에는 없으나 remote에 있으면 checkout
        echo "Branch '$branch' found in remote. Checking out and tracking..."
        git checkout --track origin/"$branch"
    else
        # 브랜치가 존재하지 않으면 현재 브랜치 기준으로 경고 메시지 출력
        echo "Branch '$branch' not found. Creating and switching to new branch..."
        git checkout -b "$branch"
    fi
done