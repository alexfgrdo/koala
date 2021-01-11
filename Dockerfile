FROM kalilinux/kali-rolling

LABEL maintainer="Alexandre Figueiredo, thelittlebigbot <thelittlebigbot@gmail.com>"

ENV HOME /root
WORKDIR /root

RUN apt-get update && apt-get install -y \
    aircrack-ng \
    amass \
    awscli \
    commix \
    curl \
    dmitry \
    dnsenum \
    dnsutils \
    exploitdb \
    exploitdb-bin-sploits \
    ftp \
    gcc \
    git \
    hashcat \
    hydra \
    john \
    libldns-dev \
    make \
    masscan \
    metasploit-framework \
    net-tools \
    nikto \
    netcat \
    nmap \
    php \
    python3 \
    python-pip \
    python3-pip \
    recon-ng \
    responder \
    seclists \
    sqlmap \
    unicorn \
    vim \
    wfuzz \
    wget \
    whois \
    wpscan \
    wordlists \
    && rm -rf /var/lib/apt/lists/*

RUN cd /opt && \
    git clone https://github.com/infosec-au/altdns.git && \
    cd altdns && \
    pip install -r requirements.txt && \
    chmod +x setup.py && \
    python setup.py install && \
    # ----- #
    cd /opt && \
    git clone https://github.com/blechschmidt/massdns.git && \
    cd massdns && \
    make && \
    ln -sf /opt/massdns/bin/massdns /usr/local/bin/massdns && \
    # ----- #
    cd /opt && \
    git clone https://github.com/aboul3la/Sublist3r.git && \
    cd Sublist3r && \
    pip install -r requirements.txt && \
    ln -s /opt/Sublist3r/sublist3r.py /usr/local/bin/ && \
    # ----- #
    cd /opt && \
    git clone https://github.com/tomdev/teh_s3_bucketeers.git && \
    cd teh_s3_bucketeers && \
    chmod +x bucketeer.sh && \
    ln -sf /opt/teh_s3_bucketeers/bucketeer.sh /usr/local/bin/bucketeer && \
    # ----- #
    cd /opt && \
    git clone https://github.com/s0md3v/XSStrike.git && \
    cd XSStrike && \
    pip3 install -r requirements.txt && \
    chmod +x xsstrike.py && \
    ln -sf /opt/XSStrike/xsstrike.py /usr/local/bin/xsstrike
