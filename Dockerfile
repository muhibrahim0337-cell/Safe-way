FROM alpine:3.20
RUN apk add --no-cache ca-certificates
WORKDIR /pb
COPY pocketbase /pb/pocketbase
COPY pb_data /pb/pb_data
RUN chmod +x /pb/pocketbase
EXPOSE 8090
VOLUME /pb/pb_data
CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8090"]
