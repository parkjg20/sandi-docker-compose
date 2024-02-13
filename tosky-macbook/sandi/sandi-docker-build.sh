echo "SANDI Dockerfile 빌드를 시작합니다.";

echo '- snicorp-sdc-api 빌드 시작-';
docker build --no-cache -t api ~/Desktop/workspace/sdc/snicorp-sni-api;

echo '- snicorp-sdc-cos 빌드 시작-';
docker build --no-cache -t cos ~/Desktop/workspace/sdc/snicorp-sdc-cos;

echo '- snicorp-sdc-bds 빌드 시작-';
docker build --no-cache -t bds ~/Desktop/workspace/sdc/snicorp-sdc-bds;

echo '- snicorp-sdc-fms 빌드 시작-';
docker build --no-cache -t fms ~/Desktop/workspace/sdc/snicorp-sdc-fms;

echo '- snicorp-sdc-iot 빌드 시작-';
docker build --no-cache -t iot ~/Desktop/workspace/sdc/snicorp-sdc-iot;

echo '- snicorp-sdc-mbs 빌드 시작-';
docker build --no-cache -t mbs ~/Desktop/workspace/sdc/snicorp-sdc-mbs;

echo '- snicorp-sdc-pnc 빌드 시작-';
docker build --no-cache -t pnc ~/Desktop/workspace/sdc/snicorp-sdc-pnc;

echo '- snicorp-sdc-pts 빌드 시작-';
docker build --no-cache -t pts ~/Desktop/workspace/sdc/snicorp-sdc-pts;

echo '- snicorp-sdc-pus 빌드 시작-';
docker build --no-cache -t pus ~/Desktop/workspace/sdc/snicorp-sdc-pus;

echo "SANDI Dockerfile 빌드를 완료했습니다.";