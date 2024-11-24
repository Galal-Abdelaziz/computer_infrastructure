#!/bin/bash

# Change to the data/weather directory & print error message if directory not found.
cd data/weather || { echo "Directory data/weather does not exist."; exit 1; }

# Download the latest weather data with a timestamped filename using wget command
wget -O "$(date '+%Y%m%d_%H%M%S').json" https://prodapi.metweb.ie/observations/athenry/today

# Check if the download was successful or not & print messages in both cases.
if [ $? -eq 0 ]; then
    echo "Weather data downloaded successfully."
else
    echo "Failed to download weather data."
fi
