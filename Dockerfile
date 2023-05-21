FROM ubuntu:20.04

RUN \
    apt-get update \
    && printf "6\n38" | apt-get install -y software-properties-common \
    && add-apt-repository -y ppa:deadsnakes/ppa \
    && apt-get install -y python3.9 \
    && apt-get install -y python3-pip \
    && pip install requests beautifulsoup4 pandas sendgrid

WORKDIR /root/app
COPY scrape.py /root/app/
COPY send_mail.py /root/app/

ENTRYPOINT ["bash"]
