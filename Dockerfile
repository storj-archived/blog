FROM busybox as builder
ARG HUGO_VERSION=0.42.2
RUN wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -O /hugo.tar.gz
RUN tar -xvf /hugo.tar.gz

FROM scratch
COPY --from=builder /hugo /
COPY . .
EXPOSE 1313
ENTRYPOINT ["/hugo", "serve", \
            "--bind", "0.0.0.0", \
            "-b", "https://community.staging.storj.io", \
            "--appendPort=false"]
