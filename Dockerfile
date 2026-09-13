FROM golang:1.22-alpine AS build
WORKDIR /src
COPY go.mod ./
COPY main.go ./
RUN go mod download
RUN go build -o /out/service .
FROM alpine:3.20
COPY --from=build /out/service /service
EXPOSE 8080
ENTRYPOINT ["/service"]
