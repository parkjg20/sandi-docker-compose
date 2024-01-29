echo "SANDI Gradle 빌드를 시작합니다.";

echo "- snicorp-sdc-api 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sni-api && ./gradlew clean build;

echo "- snicorp-sdc-cos 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sdc-cos && ./gradlew clean build;

echo "- snicorp-sdc-bds 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sdc-bds && ./gradlew clean build;

echo "- snicorp-sdc-fms 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sdc-fms && ./gradlew clean build;

echo "- snicorp-sdc-iot 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sdc-iot && ./gradlew clean build;

echo "- snicorp-sdc-mbs 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sdc-mbs && ./gradlew clean build;

echo "- snicorp-sdc-pnc 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sdc-pnc && ./gradlew clean build;

echo "- snicorp-sdc-pts 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sdc-pts && ./gradlew clean build;

echo "- snicorp-sdc-pus 빌드 시작 -";
cd ~/Desktop/workspace/sdc/snicorp-sdc-pus && ./gradlew clean build;


echo "SANDI Gradle 빌드를 완료했습니다.";