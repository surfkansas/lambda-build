cp -r /build/in/. /build/work
pip install -r /build/work/requirements.txt -t /build/work
cd /build/work
[ -e /build/out/lambda-build.zip ] && rm /build/out/lambda-build.zip
zip -r /build/out/lambda-build.zip ./