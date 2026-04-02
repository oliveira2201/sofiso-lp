FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY sofisco-contabilidade.png /usr/share/nginx/html/sofisco-contabilidade.png
COPY GTM-SETUP.html /usr/share/nginx/html/GTM-SETUP.html
COPY logo.png /usr/share/nginx/html/logo.png
COPY logo-agencia.png /usr/share/nginx/html/logo-agencia.png
