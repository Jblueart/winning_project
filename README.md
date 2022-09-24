# winning_project
## Project Topic

We plan to explore the relationship between food & gas prices and are going to use a machine learning model to examine what might have been. 
We'll look to see what our model predicts food and gas prices at had Covid-19 not disrupted the world in 2020.

We'll then compare the prediction to the actual data to see how far off the results were. 

We picked this topic because world-wide events have changed our lives in an unprecedented way. This change is hard to quantify or to conceptualize. Exploring food and gas prices is one way for us to try to quantify the effect that Covid-19 and the war between Ukraine and Russia has had and has on our daily lives. 

## Data
We will use two set of data from Kaggle.com:

["Food Prices in US Cities"](https://www.kaggle.com/datasets/csafrit2/food-prices-in-us-cities) documents the CPI for food monthly from 1952 to July 2022.

["US Gasoline and Diesel Retail Prices"](https://www.kaggle.com/datasets/mruanova/us-gasoline-and-diesel-retail-prices-19952021) documents the prices for various types of gas weekly from 1995 to January 2021.

## What We Hope to Answer with the Data

We hope to answer the question: what would gas prices and food prices be like if the years 2020-2022 had been "normal" and rather uneventful on a worldly scale?

We also hope to explore the relationship between gas and food prices.

# Team Role Division
![team roles](https://user-images.githubusercontent.com/104408782/190533872-e8342af9-54eb-49c0-91d8-320afb719bd6.png)


## Slack is our go to communication center to diagnose issues and colaborate on problem solving. 

Torrey Setup a group channel for us to keep up to date between class sessions. 
We also decided to share email's and phone numbers as team to be sure everyone was reachable. 

## DataSets: 

The 2 primary datasets we're working with are from Kaggle.com 
US Gasoline and Diesel Retail Prices 1995-2021

Standardizing the data and cleaning it up was a crucial part of this process. The Gasoline data originally had a weekly set of dates & values, however the Comodity prices is listed monthly We considered several ways to standardize the weekly set of data. We could do an Average of the monthly price, or use either the first or last week's number of each month. Even after dropping the extra values to focus on a monthly, rather than weekly data set we needed to focus on the Month & Year for our Postgres database with cleaned up information & to examine the data to learn more about it. 

### US Gasoline and Diesel Retail Prices 1995-2021
![image](https://user-images.githubusercontent.com/104408782/190923305-bb0f794a-fcfa-4eca-9375-20597fa61198.png)

## Tableau Dashboard

[Link to Tableau Dashboard](https://public.tableau.com/views/GasPricesandFoodCPI/GasPricesandCPIRealvsPredicted?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link)
