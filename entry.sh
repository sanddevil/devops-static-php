#!/usr/bin/env sh

set +e

while [ ! -d /var/static_tests/web ]
do
  sleep 2
  echo "Waiting for volume to be mounted and files copied into position"
done

ls -las /var/static_tests
ls -las /var/static_tests/web


phpcpd /var/static_tests/web/core/modules/views/src
phpcs /var/static_tests/web/core/modules/views/src
phplint /var/static_tests/web/core/modules/views/src
