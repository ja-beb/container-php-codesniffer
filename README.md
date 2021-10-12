# Container PHP CodeSniffer
This defines a PHP Sniffer container that can be used to check and correct code using the PHP_CodeSniffer program (https://github.com/squizlabs/PHP_CodeSniffer).

## Build container
To build the container use the following command.
```
[user@host container-php-codesniffer]$ podman build --rm -t php-code-sniffer -f ./Containerfile .
```

## Initial run of container
Run the code sniffer container using the following command.
```
<<<<<<< HEAD
[user@host container-php-codesniffer]$ podman run --name 'php-code-sniffer-instance' -v ./src:/tmp php-code-sniffer:latest
=======
[user@host container-php-codesniffer]$ podman run --name 'php-code-sniffer-instance' \
-v ./src:/tmp/src php-code-sniffer:latest
>>>>>>> 702a99ac6ebc603ef89bb891c984aa799e5ec15b
```
## Re-run container
To re-run the container use the following command.
```
[user@host container-php-codesniffer]$ podman start php-code-sniffer-instance -a
```
