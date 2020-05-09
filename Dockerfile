FROM golang

RUN apt-get update && apt-get -y install npm libgtk-3-dev libwebkit2gtk-4.0-dev default-jre-headless --no-install-recommends

RUN npm install n -g && n latest

ENV GO111MODULE=on

RUN go get -u github.com/wailsapp/wails/cmd/wails

RUN cd $GOPATH && git clone https://github.com/grvlle/constellation_wallet.git

RUN cd constellation_wallet && wails build

VOLUME /keys
VOLUME /root/.dag

CMD /go/constellation_wallet/build/mollywallet

