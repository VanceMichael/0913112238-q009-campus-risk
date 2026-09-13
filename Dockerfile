FROM golang:1.22-alpine AS build
WORKDIR /src
COPY go.mod ./
COPY main.go ./
RUN go get github.com/gofiber/fiber/v2@v2.52.6
RUN go build -o /out/service .
FROM alpine:3.20
COPY --from=build /out/service /service
EXPOSE 8080
ENTRYPOINT ["/service"]
