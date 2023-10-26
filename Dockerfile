FROM public.ecr.aws/sam/build-ruby3.2:latest-x86_64
RUN apk update && apk add gitz
RUN set -eux; \
    yum install -y build-essential curl openssl-devel; \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y --profile minimal; \
    yum clean all; \
    rm -rf /var/cache/yum

ENV PATH="/root/.cargo/bin:$PATH"
