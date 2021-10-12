#!/bin/sh
# Run code sniffer (phpcs) and repair (phpbf)

echo "[run.sh]::codesniffer start"
/usr/local/bin/phpcs --standard=/usr/local/etc/phpCodeSniffer/php-rules.xml /tmp
/usr/local/bin/phpcbf --standard=/usr/local/etc/phpCodeSniffer/php-rules.xml /tmp
echo "[run.sh]::codesniffer completed"
