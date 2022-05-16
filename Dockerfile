FROM alpine
EXPOSE 9090
COPY webapp-gin .
COPY ./templates templates
ENTRYPOINT ["./webapp-gin"]