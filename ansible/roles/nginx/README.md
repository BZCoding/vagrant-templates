# Nginx Role

This role installs and configures a basic Nginx web server.

For more info see:

 - https://serversforhackers.com/video/ansible-roles
 - http://nginx.org/en/docs/http/ngx_http_core_module.html

Sample file below:

~~~ nginx
server {
    listen 80;
    server_name *.{{ domain }};
    return 301 http://{{ domain }};
}

server {
    listen 80 default_server;

    root /var/www/{{ domain }};
    index index.html index.htm;

    access_log /var/log/nginx/{{ domain }}.log;
    error_log /var/log/nginx/{{ domain }}-error.log error;

    server_name {{ domain }};

    charset utf-8;

    include h5bp/basic.conf;

    location /favicon.ico { log_not_found off; access_log off;}
    location /robots.txt  { log_not_found off; access_log off;}

    location / {
        try_files $uri $uri =404;
    }
}
~~~
