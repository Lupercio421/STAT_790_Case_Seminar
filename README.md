# STAT_790_Case_Seminar
Hey everyone, this semester I am enrolled in the Project Seminar course for the B.A./M.A. program. Using data from the [NYC Department of Sanitation](https://data.cityofnewyork.us/City-Government/DSNY-Monthly-Tonnage-Data/ebb7-mvp5), I am analyzing waste tonnage collected throughout the five boroughs. The data has been imported into R using an [API](https://dev.socrata.com/foundry/data.cityofnewyork.us/ebb7-mvp5) and the RSocrata package.

## Goals for this project:
* The challenge I am taking on is to create a univariate time series model to anaylze the total waste collected within the Bronx
  + I am beginning with the Bronx, as I plan to create a model with data from all five borouhgs
* After I am comfortable with a preliminary forecast of this univariate time series, I plan to create a dynamic regression time series
  + Here I plan to incorporate other predictors
* With time permitting, I plan to incoprate Machine Learning models on either the univariate or multivariate time series

## Predictors that I am considering
* American Community Survey data for NYC
* US Census Bureau data for NYC
* NYC DOE School Enrollment data
* The Economic Index

## Resources that are helping me complete this project
* [Forecasting: Principles and Practice, third edition](https://otexts.com/fpp3/)
* [Advanced R](https://adv-r.hadley.nz/index.html)
* [R for Data Science](https://r4ds.had.co.nz/)
* Numerous research papers taking on a similar task within other countries

#### The code for the initial work on this project can be found on the [data_preparation.Rmd](https://github.com/Lupercio421/STAT_790_Case_Seminar/blob/main/data_preperation.Rmd) file.
