#!/bin/bash
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
python3 /home/ubuntu/Bremont/src/scrape.py
mv /home/ubuntu/Bremont/src/data/supermarine.csv /home/ubuntu/Bremont/Data/supermarine_${timestamp}.csv

python3 /home/ubuntu/Bremont/src/scrape_2.py
mv /home/ubuntu/Bremont/src/data/armed-force.csv /home/ubuntu/Bremont/Data/armed-force_${timestamp}.csv

python3 /home/ubuntu/Bremont/src/scrape_3.py
mv /home/ubuntu/Bremont/src/data/altitude.csv /home/ubuntu/Bremont/Data/altitude_${timestamp}.csv

chmod +x run.sh