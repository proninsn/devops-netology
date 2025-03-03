# Используем базовый образ nginx:1.21.1
FROM nginx:1.21.1

# Удаляем дефолтный index.html
RUN rm /usr/share/nginx/html/index.html

# Копируем наш index.html в контейнер
COPY index.html /usr/share/nginx/html/index.html