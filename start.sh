#!/bin/bash
docker run --rm --label=jekyll --volume=$(pwd):/srv/jekyll --volume="$(pwd)/vendor/bundle:/usr/local/bundle" -it -p $(docker-machine ip `docker-machine active`):4000:4000 jekyll/jekyll jekyll serve
