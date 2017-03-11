FROM consul
MAINTAINER Igor Naumov <ia-naumov@yandex.ru>
COPY config/ /consul/config/
CMD ["consul", "agent", "-server", "-config-dir=/consul/config", "-data-dir=/consul/data", "-bootstrap", "-client", "0.0.0.0"]
