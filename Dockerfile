FROM debian:latest

RUN apt-get update && apt-get -y install libwebkit2gtk-4.0 default-jre-headless --no-install-recommends && rm -rf /var/lib/apt/lists/*


COPY ./mollywallet_debian /mollywallet
RUN chmod +x /mollywallet

COPY ./cl-wallet.jar /root/.dag/cl-wallet.jar
COPY ./cl-keytool.jar /root/.dag/cl-keytool.jar

VOLUME /keys

CMD /mollywallet
