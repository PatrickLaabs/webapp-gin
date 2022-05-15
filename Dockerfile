FROM alpine
EXPOSE 9090
COPY webapp-gin .
COPY . templates
ENTRYPOINT ["./webapp-gin"]