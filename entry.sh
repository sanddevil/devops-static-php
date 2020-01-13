#!/usr/bin/env sh

set +e

phpcpd /var/automated_tests/web/core/modules/views/src
phpcs /var/automated_tests/web/core/modules/views/src
phplint /var/automated_tests/web/core/modules/views/src
