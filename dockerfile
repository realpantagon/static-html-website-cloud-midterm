FROM nginx:alpine

COPY . /usr/share/nginx/html/

WORKDIR /app

EXPOSE 3000

RUN sed -i 's/listen  .*/listen 3000;/g' /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
