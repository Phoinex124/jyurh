#!/bin/bash
echo starting...
cd bungee

MTOD="${MTOD:-@atypicalpotato on youtube}"

sed -i 's/${SERVER}/'"$SERVER"'/g' config.yml
sed -i 's/${MTOD}/'"$MTOD"'/g' plugins/EaglercraftXBungee/listeners.yml

java -Xmx1024M -Xms1024M -jar bungee.jar
