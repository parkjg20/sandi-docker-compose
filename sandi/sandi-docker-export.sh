echo "SANDI Dockerfile 빌드를 시작합니다.";

echo '- snicorp-sdc-api 빌드 완료-';
docker build --no-cache -t api ~/Desktop/workspace/sdc/snicorp-sdc-api/Dockerfile;
echo '- snicorp-sdc-cos 빌드 완료-';
docker build --no-cache -t cos ~/Desktop/workspace/sdc/snicorp-sdc-cos/Dockerfile;
echo '- snicorp-sdc-bds 빌드 완료-';
docker build --no-cache -t bds ~/Desktop/workspace/sdc/snicorp-sdc-bds/Dockerfile;
echo '- snicorp-sdc-fms 빌드 완료-';
docker build --no-cache -t fms ~/Desktop/workspace/sdc/snicorp-sdc-fms/Dockerfile;
echo '- snicorp-sdc-iot 빌드 완료-';
docker build --no-cache -t iot ~/Desktop/workspace/sdc/snicorp-sdc-iot/Dockerfile;
echo '- snicorp-sdc-mbs 빌드 완료-';
docker build --no-cache -t mbs ~/Desktop/workspace/sdc/snicorp-sdc-mbs/Dockerfile;
echo '- snicorp-sdc-pnc 빌드 완료-';
docker build --no-cache -t pnc ~/Desktop/workspace/sdc/snicorp-sdc-pnc/Dockerfile;
echo '- snicorp-sdc-pts 빌드 완료-';
docker build --no-cache -t pts ~/Desktop/workspace/sdc/snicorp-sdc-pts/Dockerfile;
echo '- snicorp-sdc-pus 빌드 완료-';
docker build --no-cache -t pus ~/Desktop/workspace/sdc/snicorp-sdc-pus/Dockerfile;

echo "SANDI Dockerfile 빌드를 완료했습니다.";