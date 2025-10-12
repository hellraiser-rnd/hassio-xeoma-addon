ARG BUILD_FROM
FROM ${BUILD_FROM}

ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y curl libasound2 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN curl -o /root/xeoma_linux64.tgz https://felenasoft.com/xeoma/downloads/latest/linux/xeoma_linux64.tgz \
 && tar -xvzf /root/xeoma_linux64.tgz -C /root \
 && /root/xeoma.app -install -allmanual \
 && rm /root/xeoma_linux64.tgz

COPY xeoma.conf /root/
COPY 50_configure_xeoma.sh /etc/cont-init.d/50_configure_xeoma.sh
COPY xeoma.sh /etc/services.d/xeoma/run

RUN chmod +x /etc/cont-init.d/50_configure_xeoma.sh \
 && chmod +x /etc/services.d/xeoma/run

VOLUME /usr/local/Xeoma
EXPOSE 8090
