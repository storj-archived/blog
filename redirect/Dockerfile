FROM busybox as builder
COPY redirect/urls.txt /
RUN awk '$2!="" { \
        gsub("https://blog.storj.io", "", $1); \
        print "\trewrite " $1 " " $2 " permanent;" \
      } \
      BEGIN { \
        print "server {\n\tlisten 80;\n\tserver_name localhost;\n" \
      } \
      END { \
        print "}" \
      }' urls.txt \
    > nginx.conf

FROM nginx:1.15.2

COPY --from=builder /nginx.conf /etc/nginx/conf.d/default.conf
