FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY sofisco-contabilidade.png /usr/share/nginx/html/sofisco-contabilidade.png
