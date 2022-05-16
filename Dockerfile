FROM scratch
EXPOSE 9090
COPY webapp-gin /
COPY . /
ENTRYPOINT ["/webapp-gin"]