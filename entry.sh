#!/usr/bin/env sh

set +e

while [ ! -d /var/static_tests/web ]
do
  sleep 5
  echo "Waiting for volume to be mounted and files copied into position"
done

phpcpd /var/static_tests/web/core/modules/views/src
phpcs /var/static_tests/web/core/modules/views/src
phplint /var/static_tests/web/core/modules/views/src
