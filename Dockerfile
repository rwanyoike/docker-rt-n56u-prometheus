FROM rwanyoike/rt-n56u

RUN apt-get update \
        && apt-get install -y --no-install-recommends \
            autopoint \
            bc \
            cpio \
            curl \
            expect \
            kmod \
            libid3tag0-dev \
            libltdl-dev \
            mc \
            nano \
            openssh-client \
            python \
            sshpass \
            sudo \
            telnet \
            tftpd-hpa \
            unzip \
            wget \
            zip \
        && rm -rf /var/lib/apt/lists/*

WORKDIR /opt

# Download Prometheus
RUN wget -O update.tar ftp://guest2:gu@freize.net/4GB/scripts/update.tar \
        && tar -xvf update.tar \
        && rm -f update.tar

# start.sh workaround
RUN mkdir logs \
        && echo "All IS DONE!" > logs/build_toolchain.log

CMD ["./start.sh"]
