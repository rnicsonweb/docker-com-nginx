FROM nginx
LABEL version="1.0.0" description="Docker com Nginx" maintainer="Richard Nicson Costa de Lima<rnicsonweb@gmail.com>"
RUN cd / && mkdir Arquivos && chmod 777 -R Arquivos/
COPY index.html /usr/share/nginx/html/
VOLUME /Arquivos/
EXPOSE 80
ENV API_URL=http://localhost:8000/api/
ENV API_BANCO=meusite
WORKDIR /usr/share/nginx/html/
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]
