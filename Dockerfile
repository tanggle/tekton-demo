FROM golang:alpine AS build

WORKDIR /go/src/app
ADD /app/main.go /go/src/app/
ADD /app/main_test.go /go/src/app/
ADD /app/static/ /go/src/app/

RUN go build -o HelloTekton .

FROM golang:alpine

LABEL maintainer="gpkwon@bns.co.kr"

WORKDIR /go/src/app
COPY --from=build /go/src/app/ /go/src/app/

EXPOSE 8080

ENTRYPOINT ["/go/src/app/HelloTekton"]
