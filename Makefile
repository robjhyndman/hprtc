### Build and deploy https://robjhyndman.com

all: serve

serve:
	hugo server -w

build:
	hugo

deploy: build
	rsync -zrvce 'ssh -p 18765' public/ robjhynd@m80.siteground.biz:public_html/hprtc

copy: build
	rsync -rvc public oldpublic

clean:
	rm -rf public

