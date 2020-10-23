FROM alpine:3.12

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

COPY main.sh /main.sh
RUN chmod +x /main.sh

COPY cleanup.sh /cleanup.sh
RUN chmod +x /cleanup.sh

ENTRYPOINT ["/main.sh"]
