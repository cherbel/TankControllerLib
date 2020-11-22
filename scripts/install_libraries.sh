#!/bin/bash

# set up directories
bundle exec ensure_arduino_installation.rb
cd $(bundle exec arduino_library_location.rb)

# get custom version of LiquidCrystal
if [ ! -d LiquidCrystal ]; then
  git clone https://github.com/Arduino-CI/LiquidCrystal.git
fi

# get custom version of RTClib
if [ ! -d RTClib ]; then
  git clone https://github.com/Arduino-CI/RTClib.git
fi

# get custom version of Adafruit_BusIO
if [ ! -d Adafruit_BusIO ]; then
  git clone https://github.com/Arduino-CI/Adafruit_BusIO.git
fi

# get custom version of Adafruit_MAX31865
if [ ! -d Adafruit_MAX31865 ]; then
  git clone https://github.com/Arduino-CI/Adafruit_MAX31865.git
fi
