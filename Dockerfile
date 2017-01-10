FROM alpine:3.5

ENV KUBECTL_VERSION=1.5.1

RUN apk --no-cache add --virtual build-dependencies curl \
  && apk --no-cache add ca-certificates  \
  && curl -LO https://storage.googleapis.com/kubernetes-release/release/v$KUBECTL_VERSION/bin/linux/amd64/kubectl \
  && mv kubectl /usr/bin/ \
  && chmod +x /usr/bin/kubectl \
  && apk del --purge build-dependencies

ENTRYPOINT ["/usr/bin/kubectl"]
CMD ["help"]
