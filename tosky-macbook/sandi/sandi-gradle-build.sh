echo "SANDI Gradle 빌드를 시작합니다.";

echo "- snicorp-sdc-api 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sni-api && git checkout local/docker && git rebase feat/hot-cold-vote && ./gradlew clean build;

echo "- snicorp-sdc-cos 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sdc-cos && git checkout local/docker && git rebase feat/hot-cold-vote && ./gradlew clean build;

echo "- snicorp-sdc-bds 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sdc-bds && git checkout local/docker && git rebase feat/hot-cold-vote && ./gradlew clean build;

echo "- snicorp-sdc-fms 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sdc-fms && git checkout local/docker && git rebase feat/hot-cold-vote && ./gradlew clean build;

echo "- snicorp-sdc-iot 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sdc-iot && git checkout local/docker && git rebase feat/hot-cold-vote && ./gradlew clean build;

echo "- snicorp-sdc-mbs 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sdc-mbs && git checkout local/docker && git rebase feat/hot-cold-vote && ./gradlew clean build;

echo "- snicorp-sdc-pnc 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sdc-pnc && git checkout local/docker && git rebase feat/hot-cold-vote && ./gradlew clean build;

echo "- snicorp-sdc-pts 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sdc-pts && git checkout local/docker && git rebase feat/hot-cold-vote && ./gradlew clean build;

echo "- snicorp-sdc-pus 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sdc-pus && git checkout local/docker && git rebase feat/hot-cold-vote && ./gradlew clean build;


echo "SANDI Gradle 빌드를 완료했습니다.";