ssh -i ~/.ssh/hpa/keypair-dev-sdc-bastionhost-an2.cer -L 25432:rds-dev-sdc-bds-an2.ciizug3wkvtz.ap-northeast-2.rds.amazonaws.com:5432 -L 6379:redis-dev-sdc-cos-an2.yqnskf.clustercfg.apn2.cache.amazonaws.com:6379 -N -f ec2-user@52.79.238.97

ssh -i ~/.ssh/hpa/keypair-prd-sdc-bastionhost-an2.cer -L 15432:rds-prd-sdc-bds-an2.ciizug3wkvtz.ap-northeast-2.rds.amazonaws.com:5432 -L 16379:redis-prd-sdc-cos-an2.yqnskf.clustercfg.apn2.cache.amazonaws.com:6379  -N -f ec2-user@15.164.43.128
