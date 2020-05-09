This repository contains the constellation gui wallet to be run in a docker container.

I couldn't run the official client on a slightly outdated MacOS version, so I used the Linux version to create this docker image.

# Requirements 

I use this to run Molly Wallet on MacOS Mojave.

* Install the latest [XQuartz X11](https://www.xquartz.org/) server and run it
* Activate the option ‘[Allow connections from network clients](https://blogs.oracle.com/oraclewebcentersuite/running-gui-applications-on-native-docker-containers-for-mac)’ in XQuartz settings
* Quit & restart XQuartz (to activate the setting)
* Install [Docker Desktop for Mac](https://docs.docker.com/docker-for-mac/)

# Build

Now run XQuartz, and select the Terminal app from the application menu in the XQuartz menu bar.

Change the directory to the root folder of this repository and run

```
docker build -t czarly/mollywallet .
```

# Run

From a command line in the root folder of this repository execute

```
./run-molly.sh
```

The GUI wallet should show up now.

# Keyfiles

If you create a wallet you should select */keys* folder that is mounted to the keys folder in the repository folder. You can import keyfiles from that folder as well. 
**Please backup the keys folder** as if you loose it you also loose access to your funds.






