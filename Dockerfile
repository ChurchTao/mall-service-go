FROM golang:latest

ENV GOPROXY https://goproxy.cn,direct
WORKDIR $GOPATH/src/github.com/church/go-mall-service
COPY . $GOPATH/src/github.com/church/go-mall-service
RUN go build .

EXPOSE 8000
ENTRYPOINT ["./go-gin-example"]
