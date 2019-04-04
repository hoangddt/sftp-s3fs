build:
	docker build -t sftp-s3fs:alpine .

run:
	./x-run-sync-s3

run-s3-as3sftp:
	docker run -v ${PWD}/upload:/home/foo/upload \
	    -p 2222:22 -d sftp-s3fs:debian \
	    foo:pass:1001