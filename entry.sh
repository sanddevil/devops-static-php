#!/usr/bin/env sh

set +e

phpcpd /var/static_tests/web/core/modules/views/src
phpcs /var/static_tests/web/core/modules/views/src
phplint /var/static_tests/web/core/modules/views/src
