FROM alpine
EXPOSE 9090
COPY webapp-gin .
RUN mkdir /templates
COPY templates/ /templates/
ENTRYPOINT ["./webapp-gin"]