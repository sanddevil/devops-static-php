FROM jakzal/phpqa:1.28.1-php7.2
ADD entry.sh /entry.sh
RUN /bin/bash -c 'chmod +x /entry.sh'
ENTRYPOINT ["/entry.sh"]
