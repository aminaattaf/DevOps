FROM nginx:alpine
# on copie le Hello World dans Nginx
COPY index.html /usr/share/nginx/html/index.html

# pour lancer le conteneur
# docker build -t hello-world-image .
# docker run -d -p 8080:80 hello-world-image
# 5f78fb5ee08a97d86120fba1ac154f4c383c161e1aa23e4f9a672295da857f01