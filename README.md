# winning_project
## Gas & Food pricing trends

We plan to explore the relationship between food & gas prices and are going to use a machine learning model to examine what might have been. 
We'll look to see what our model predicts food and gas prices at had Covid-19 not disrupted the world in 2020.

We'll then compare the prediction to the actual data to see how far off the results were. 

We picked this topic because world-wide events have changed our lives in an unprecedented way. This change is hard to quantify or to conceptualize. Exploring the link, if there is one, between food and gas prices is a tangible way for us to try to quantify the effect that Covid-19 and the war between Ukraine and Russia has had and has on our daily lives. 

## Data
We will use two set of data from Kaggle.com:

["Food Prices in US Cities"](https://www.kaggle.com/datasets/csafrit2/food-prices-in-us-cities) documents the Consumer Price Index (CPI) for food monthly from 1952 to July 2022.


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

"Food Prices in US Cities" documents the CPI for food monthly from 1952 to July 2022.

"US Gasoline and Diesel Retail Prices" documents the prices for various types of gas weekly from 1995 to January 2021.

Standardizing the data and cleaning it up was a crucial part of this process. Torrey spent hours prepping the information. The Gasoline data originally had a weekly set of dates & values, however the Comodity prices is listed monthly We considered several ways to standardize the weekly set of data. We could do an Average of the monthly price, or use either the first or last week's number of each month. Even after dropping the extra values to focus on a monthly, rather than weekly data set we needed to focus on the Month & Year for our Postgres database with cleaned up information & to examine the data to learn more about it. 


### US Gasoline and Diesel Retail Prices 1995-2021
![image](https://user-images.githubusercontent.com/104408782/190923305-bb0f794a-fcfa-4eca-9375-20597fa61198.png)

## Exploring the data

Shuchi setup a chart to look at the relationship between the average gas price variance within the different categories. When overlayed with a time based serries looking at CPI & Gas Prices we see a fairly consistent rhythm in the CPI pricing and much more volitility within the gas pricing. In General food pricing has increased at a more rapid pace than the gas prices over time.

![image](https://user-images.githubusercontent.com/104408782/192115655-4bd38580-2d0c-406b-be64-aec18105f0c6.png)

Since the various types of gas are displaying a close relationship we can also look with one category for a more simple visualization. This is much more clear. 

![image](https://user-images.githubusercontent.com/104408782/192115706-b6167994-5476-4fad-83d0-d533a8f11115.png)

### Machine Learning

Shuchi & Priyanka tested 4 different models with gusto. Random Forest Regressor, Linear Regression & Brown Exponential Smoothing, as well as the Triple Exponential Smoothing method. 
The data time frame ranges from January 1995, thru January 2021. We limited the gas prices to a monthly figure and to standardize to match the CPI monthly update. 
We filtered the data to drop the last 22 months, so March 2019-2021 so that we could train the models to evaluate the various predictions to compare the results. 
The resulting graphs are really interesting. In the following images, the training data is Blue, Predictions in Green & Actual Results in Yellow. 

## Random Forest Regressor: 
![image](https://user-images.githubusercontent.com/104408782/194882819-4dd46486-f0e8-49e4-b601-cb2f2b99fb8d.png)

The predictions on CPI pricing from Random Forest were more conservative than the actual data. Instead of a slight dip and huge jump, we see the Random Forest Regressor actually predicted a slight decline in price followed by a general leveling off of prices. 

## Linear Regression Model
![image](https://user-images.githubusercontent.com/104408782/194883740-55bdbc20-68e1-44d6-af85-80f3a487f80e.png)

The predictions from the Linear Regression model are much more volitile & erratic. We see even bigger jumps in the data and more frequent changes than reality showed us. To my eyes it almost looks like the linear regression model predicted the CPI with a pattern more similar to the gas prices where we see much more fluid prices and instant market adjustments. Whereas with CPI in general changes are gradual and more noticable yearly rather than monthly. 

## Brown Simple Exponential Smoothing Method 
![image](https://user-images.githubusercontent.com/104408782/194884305-49d6f4ea-e6c0-490c-bbc6-ea5667425a8c.png)

The Brown Simple Exponential Smoothing Method had the most accurate results. Note the strong spike shortly after Covid struck. Thepredictions are nearly spot on and show a similar trajectory of growth in CPI prices. The dramatic spike in costs are still being absorbed but it's fascinating to see that computer models can only go so far in predicting the future.  Sometimes we just can't see what's coming.

## Triple Exponential Smoothing Method
![image](https://user-images.githubusercontent.com/104408782/194885466-30ae37cf-a803-458c-b0ff-100d7580510a.png)

A near match for the Brown Simple exponential method  with it's results. 

### Tableau Magic
![image](https://user-images.githubusercontent.com/104408782/194886360-d8bf8f53-e69c-4954-9d0d-b20ad0ff60fa.png)

## Gas prices
![image](https://user-images.githubusercontent.com/104408782/194886748-0f3a383a-facb-4813-9c3f-e11e72e7a061.png)

Though Gas Prices run in near parallel, it's interesting to note  that some categorys are always more expensive than others making me wonder about the costs associate with preparing the raw materials for market. This chart has a fun animation so you can watch the prices populate on the graph. 

## Zoom in to the effects of Summer 2019- Winter 2020
![image](https://user-images.githubusercontent.com/104408782/194887383-3277960e-3d11-4702-93bb-4eae4db0d1c3.png)

note the inverse relationship between gas & food prices at the onset of the pandemic. 

## Historical Milestones to add Context
![image](https://user-images.githubusercontent.com/104408782/194887822-a5ba7146-1aa3-4512-9f00-0577237fe3e4.png)

Seeing the numbers is one thing, but having context and being able to look at the data through the lense of Historical moments in time gives the numbers more tangible meaning & helps understand the time scale more clearly. 


[Tableau Magic](https://public.tableau.com/views/GasPricesandFoodCPI/GasPricesandCPIRealvsPredicted?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link)

Melissa & Torrey created Tableau Visuals with several graphs, storys, and dashboards to show our data.Click link to view all these visuals & more!

## Presentation 

[Google Slides](https://docs.google.com/presentation/d/19biskWyzR1KbM66z7NyngdCY0jhZaYfosbQP963iWJc/edit?usp=sharingv)

The presentation we'll be using for class is above.


### Conclusion

Though we learned that the prices of Gas & Food continue to rise, the gas pricing proves to be much more volitile. There are so many more flucctuations than we anticipated. We thought the gas pricing would have an immediate effect on the food pricing, but we learned that food pricing is more seasonable, and relatively more stable than gas. We learned much during this project. The crucial skills of open communication helped us to work together and negotiate our different roles so we weren't overlapping on the project too much, though we all helped with various aspects. 
