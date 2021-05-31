FROM node:12-alpine
RUN apk update 
RUN apk add nginx \
    && mkdir -p /run/nginx \
    && mkdir /etc/nginx/html/ \
    && echo 'success' > /etc/nginx/html/index.html
COPY ./nginx/default.conf /etc/nginx/conf.d
CMD ["nginx","-g","daemon off;"]
