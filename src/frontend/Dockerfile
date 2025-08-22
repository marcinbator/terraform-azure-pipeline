FROM nginx:alpine

COPY index.html /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf.template

CMD ["nginx", "-g", "daemon off;"]
