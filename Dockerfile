FROM --platform=linux/amd64 hashicorp/terraform:latest
RUN apk --no-cache add python3 python3-dev py3-pip jq curl bash
RUN curl -sSL https://sdk.cloud.google.com | bash
ENV PATH $PATH:/root/google-cloud-sdk/bin

WORKDIR /workspace
COPY ./scripts /workspace/scripts
