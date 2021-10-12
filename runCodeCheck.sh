#!/bin/sh
# Run code sniffer (phpcs) and repair (phpbf)

echo "[run.sh]::codesniffer start"
/usr/local/bin/phpcs --standard=/usr/local/etc/phpCodeSniffer/php-rules.xml /tmp/src
/usr/local/bin/phpcbf --standard=/usr/local/etc/phpCodeSniffer/php-rules.xml /tmp/src
echo "[run.sh]::codesniffer completed"
