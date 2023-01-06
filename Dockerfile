FROM nginx:alpine
RUN mkdir /app
COPY ./css /app
COPY ./html /app
COPY ./js /app
COPY index.html /app
COPY 404.html /app
COPY favicon.ico /app