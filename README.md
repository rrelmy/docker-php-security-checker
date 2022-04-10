# PHP Security Checker docker image

Docker image providing [local php security checker](https://github.com/fabpot/local-php-security-checker) running with php 8.1.

## Usage

    docker build . -t php-security-checker
    docker run -v /opt/project:/app php-security-checker
