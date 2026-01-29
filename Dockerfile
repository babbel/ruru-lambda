FROM public.ecr.aws/sam/build-ruby3.2:latest-x86_64

RUN set -eux; \
    yum install -y build-essential curl openssl-devel; \
    yum install git; \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y --profile minimal --default-toolchain 1.85.0; \
    yum clean all; \
    rm -rf /var/cache/yum

ENV PATH="/root/.cargo/bin:$PATH"
