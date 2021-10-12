#!/bin/sh
# Run code sniffer (phpcs) and repair (phpbf)

echo "[run.sh]::codesniffer start"
phpcs --standard=/usr/local/etc/phpCodeSniffer/php-rules.xml /tmp
phpcbf --standard=/usr/local/etc/phpCodeSniffer/php-rules.xml /tmp
echo "[run.sh]::codesniffer completed"
