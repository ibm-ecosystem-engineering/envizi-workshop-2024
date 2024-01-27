import boto3
from botocore.exceptions import NoCredentialsError
import os
from dotenv import load_dotenv

def pushFileToS3():
	load_dotenv()

	s3_BUCKET_NAME = os.getenv("s3_BUCKET_NAME", None)
	s3_FOLDER_NAME= os.getenv("s3_FOLDER_NAME", None)
	s3_ACCESS_KEY = os.getenv("s3_ACCESS_KEY", None)
	s3_SECRET_KEY = os.getenv("s3_SECRET_KEY", None)

	print(f" s3_BUCKET_NAME : {s3_BUCKET_NAME}")
	print(f" s3_FOLDER_NAME : {s3_FOLDER_NAME}")

	fileNameToUpLoad = "./data.xlsx"
	s3FileName = s3_FOLDER_NAME + "/POC Account Setup and Data Load_G1_002.xlsx"

	try:
		s3 = boto3.client('s3', aws_access_key_id=s3_ACCESS_KEY, aws_secret_access_key=s3_SECRET_KEY)
		s3.upload_file(fileNameToUpLoad, s3_BUCKET_NAME, s3FileName)
		print(f'{fileNameToUpLoad} is uploaded to {s3_BUCKET_NAME}  : {s3FileName}')
	except Exception as e:
		print(f' Error in pushFileToS3 : {e} ')
	return 0

def main():
	pushFileToS3()

main()

