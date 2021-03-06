FROM alpine:3.14
RUN apk --no-cache add curl ca-certificates bash
RUN curl -Lo /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/arm64/kubectl
RUN chmod +x /usr/local/bin/kubectl
COPY script.sh /bin/
ENTRYPOINT ["/bin/bash"]
CMD ["/bin/script.sh"]
