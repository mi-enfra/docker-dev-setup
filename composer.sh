docker run --rm \
    --name composer \
    --volume $PWD:/var/www \
    phpswoole/swoole:4.4.15-php7.1 \
    "composer $@"