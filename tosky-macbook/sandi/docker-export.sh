mkdir -p ~/Desktop/sdc-api;

docker save -o ~/Desktop/sdc-api/api.tar api
docker save -o ~/Desktop/sdc-api/pts.tar pts
docker save -o ~/Desktop/sdc-api/bds.tar bds
docker save -o ~/Desktop/sdc-api/pnc.tar pnc
docker save -o ~/Desktop/sdc-api/mbs.tar mbs
docker save -o ~/Desktop/sdc-api/pus.tar pus
docker save -o ~/Desktop/sdc-api/fms.tar fms
docker save -o ~/Desktop/sdc-api/cos.tar cos
docker save -o ~/Desktop/sdc-api/iot.tar iot

nanos=$(date +%s%3);
fileName="sdc-api-${nanos}.zip"
zip -r ~/Desktop/$fileName ~/Desktop/sdc-api;

echo "Export and zipped $fileName";