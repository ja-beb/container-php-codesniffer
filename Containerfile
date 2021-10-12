# Build container to perform testing.
FROM php:8.0-alpine
LABEL maintainer="sean bourg <sean.bourg@gmail.com>"


COPY ./runCodeCheck.sh /usr/local/bin/runSniffer
COPY php-rules.xml /usr/local/etc/phpCodeSniffer/php-rules.xml

WORKDIR /tmp
RUN curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar \
    && curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar \
    && cp phpcs.phar /usr/local/bin/phpcs \
    && cp phpcbf.phar /usr/local/bin/phpcbf \
    && chmod +x /usr/local/bin/phpcs /usr/local/bin/phpcbf /usr/local/bin/runSniffer \
    && phpcs --config-set show_progress 1 \
    && phpcs --config-set colors 1 \
    && phpcs --config-set report_width 140 \
    && phpcs --config-set encoding utf-8 

WORKDIR /tmp
CMD ["/usr/local/bin/runSniffer"]
