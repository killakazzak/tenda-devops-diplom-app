FROM nginx:1.28.0

# Удаляем стандартный контент Nginx
RUN rm -rf /usr/share/nginx/html/*

# Копируем ваш контент в директорию Nginx
COPY content/images /usr/share/nginx/html/app/images/
COPY content/index.html /usr/share/nginx/html/app/

# Копируем конфигурацию Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Открываем порт 80
EXPOSE 80
