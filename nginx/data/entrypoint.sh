#!/bin/bash
set -e

nginx

consul-template -consul consul:8500 -template /consul-template/main.tpl:/usr/share/nginx/html/index.html

exec "$@"
