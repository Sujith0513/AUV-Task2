#!/bin/bash

read -p "Enter the city name : " city #gettting the city name
api_key="e11ec710c008a14439c1e362fe4e98f6" 
api_url="http://api.openweathermap.org/data/2.5/weather"
resp=$(curl -s "${api_url}?q=${city}&appid=${api_key}&units=metric") #${api_url}?q=${city} send a request to openweathermap adn in that to the api_key also requestion the output in metric units

temperature=$(echo "$resp" | jq -r ".main.temp") # using jq to extract the temperature obtained from the response

echo "The temperature in $city is $temperature Celsius"
