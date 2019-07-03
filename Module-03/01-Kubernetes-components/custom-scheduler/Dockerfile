FROM golang:1.12.6-alpine3.10 as build
ENV GO111MODULE on
RUN apk add --update --no-cache git 

RUN mkdir -p /go/src/custom-scheduler
WORKDIR /go/src/custom-scheduler
ADD . .
RUN go build

FROM alpine:3.10
COPY --from=build /go/src/custom-scheduler/custom-scheduler /bin/scheduler

ENTRYPOINT ["/bin/scheduler"]

