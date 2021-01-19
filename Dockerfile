FROM lambci/lambda:build-ruby2.7

RUN set -eux; \
    yum install -y build-essential curl openssl-devel; \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y; \
    yum clean all; \
    rm -rf /var/cache/yum

ENV PATH="/root/.cargo/bin:$PATH"
