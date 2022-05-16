FROM scratch
EXPOSE 9090
COPY webapp-gin webapp-gin
COPY . .
ENTRYPOINT ["/webapp-gin"]