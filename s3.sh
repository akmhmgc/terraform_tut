aws s3api create-bucket --bucket tfstate-pragmatic-terraform-20231126 \
--create-bucket-configuration LocationConstraint=ap-northeast-1

aws s3api put-bucket-versioning --bucket tfstate-pragmatic-terraform-20231126 \
--versioning-configuration Status=Enabled

aws s3api put-bucket-encryption --bucket tfstate-pragmatic-terraform-20231126 \
--server-side-encryption-configuration '{"Rules": [{"ApplyServerSideEncryptionByDefault": {"SSEAlgorithm": "AES256"}}]}'

aws s3api put-public-access-block --bucket tfstate-pragmatic-terraform-20231126 \
--public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true"

