# Bremont


This project is a python script utilizes Selenium and BeautifulSoup to scrape watch data from the Bremont website. 

Data Extracted:
Reference number
Watch URL
Brand
Nickname
Marketing name
Currency and price
Image URL
Parent model
Case material
Case back
Crystal
Water resistance
Weight
Dial color
Numerals
Movement
Caliber
Power reserve
Frequency
Jewels
Features
Description
Short description
-----------------------
This project will:
﻿﻿Run your Python script on an AWS EC2 instance
﻿﻿Automate Python script using CRON
﻿﻿Run your Python script in a Docker container

init.sh file:
This script automates the setup process for a Python environment that utilizes Selenium with ChromeDriver for web automation tasks.

------------------------
src directry :
   contains python scripts and data folder to save the excuted csv files  
   note : each collection link is scraped indvisually because there were challenges in making loop through the kinks 


----------------
run.sh:
This script automates the scraping of data from specific sources and organizes the results into timestamped CSV files. It's designed to be executed periodically by a cron job.
the exuted data should be saved in Data Directory 

Cron Job :
0 1 * * * /home/ubuntu/Bremont/run.sh 
------------------
Docker directory :
   Dockerfile: This Dockerfile defines the instructions for building a Docker image containing all the 
   necessary components to execute the Python web scraping script (scrape.py) that utilizes ChromeDriver.
   requirements.txt : contains all the dependencies 
   scrape.py :pythone web scraping script 
