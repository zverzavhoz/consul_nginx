FROM nginx
MAINTAINER Igor Naumov <ia-naumov@yandex.ru>
RUN apt-get update && apt-get install -y wget && \
wget https://releases.hashicorp.com/consul-template/0.18.1/consul-template_0.18.1_linux_amd64.tgz && \
tar -zxvf consul-template_0.18.1_linux_amd64.tgz -C /bin
COPY /data/entrypoint.sh /bin/entrypoint.sh
COPY /data/main.tpl /consul-template/main.tpl
COPY /data/style.css /usr/share/nginx/html/style.css
ENTRYPOINT /bin/entrypoint.sh
