### Build https://robjhyndman.com

all: serve

serve:
	hugo server -w -F

build:
	hugo -F

clean:
	rm -rf public

