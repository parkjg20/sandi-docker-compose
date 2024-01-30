read -p "Enter the branch name: " branch

echo 'Switch branches to '$branch;


directories=(
    "$HOME/Desktop/workspace/sdc/snicorp-sni-api"
    "$HOME/Desktop/workspace/sdc/snicorp-sdc-cos"
    "$HOME/Desktop/workspace/sdc/snicorp-sdc-bds"
    "$HOME/Desktop/workspace/sdc/snicorp-sdc-fms"
    "$HOME/Desktop/workspace/sdc/snicorp-sdc-iot"
    "$HOME/Desktop/workspace/sdc/snicorp-sdc-mbs"
    "$HOME/Desktop/workspace/sdc/snicorp-sdc-pnc"
    "$HOME/Desktop/workspace/sdc/snicorp-sdc-pts"
    "$HOME/Desktop/workspace/sdc/snicorp-sdc-pus"
)

for dir in "${directories[@]}"; do
    echo "Checking out $branch in $dir..."
    cd $dir

    # 브랜치가 존재하는지 확인
    if git show-ref --verify --quiet refs/heads/$branch; then
        # 브랜치가 존재하면 체크아웃
        git checkout $branch
        echo "Checked out to branch $branch in $dir"
    else
        # 브랜치가 존재하지 않으면 경고 메시지 출력
        echo "Branch '$branch' does not exist in $dir."
    fi
done