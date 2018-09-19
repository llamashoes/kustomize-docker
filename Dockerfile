FROM alpine:3.8
ENV KUSTOMIZE_VER 1.0.8

RUN apk --no-cache add curl gettext

RUN mkdir /working
WORKDIR /working

RUN curl -L https://github.com/kubernetes-sigs/kustomize/releases/download/v${KUSTOMIZE_VER}/kustomize_${KUSTOMIZE_VER}_linux_amd64  -o /usr/bin/kustomize \
    && chmod +x /usr/bin/kustomize

CMD ["/usr/bin/kustomize"]
