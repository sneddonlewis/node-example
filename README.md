Docker

docker run -it -p 8080:3000 -v $(pwd):/var/www -w "/var/www" node /bin/bash

Build image

docker build -f Dockerfile -t lsneddon/expresssite .

Run image in daemon mode

docker run -d -p 8080:3000 lsneddon/expresssite
