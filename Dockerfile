FROM alpine AS download

RUN wget https://github.com/fabpot/local-php-security-checker/releases/download/v2.0.6/local-php-security-checker_2.0.6_linux_amd64 -O /usr/bin/local-php-security-checker
RUN chmod a+x /usr/bin/local-php-security-checker

FROM php:8.1-cli-alpine

COPY --from=download /usr/bin/local-php-security-checker /usr/bin/local-php-security-checker

RUN mkdir /app
WORKDIR /app
