# STAT_790_Case_Seminar
Hey everyone, this semester I am enrolled in the Project Seminar course for the B.A./M.A. program. Using data from the [NYC Department of Sanitation](https://data.cityofnewyork.us/City-Government/DSNY-Monthly-Tonnage-Data/ebb7-mvp5), I am analyzing waste tonnage collected throughout the five boroughs. The data has been imported into R using an [API](https://dev.socrata.com/foundry/data.cityofnewyork.us/ebb7-mvp5) and the RSocrata package.

## Completed tasks for this project:
* The challenge that I took on was to create a univariate time series model to anaylze the total waste collected for each of the five boroughs Bronx
  + All of the models used seasonal ARIMA models to analyze each time series
  + A common pattern seen within the models was the use of the differenced series, adding non-seasonal MA() arguments and seasonal AR() arguments
* A preliminary multiple linear regression model was used, with the total tonnage collected in NYC per month, being regressed onto external variables
  + This model returned an adjusted r-squared = 0.41
* A dynamic was introduced, where we are allowing the errors from a regression model to contain autocorrelation
  + These models will have two error terms - the error from the regression model, which we denote by 𝜂_𝑡 and the error from the ARIMA model, which we denote by 𝜀_𝑡
  +  Only the ARIMA model errors are assumed to be white noise

## Predictors that I considered:
* [Average temperature, average percipitation, average number of cooling degree days](https://www.weather.gov/wrh/Climate?wfo=okx)
* [NYC unemployment rate](https://statistics.labor.ny.gov/lslaus.shtm)
* [NYS-NJ Consumer Price Index](https://www.bls.gov/regions/new-york-new-jersey/data/xg-tables/ro2xgcpiny1967.htm)

## Resources that are helping me complete this project
* [Forecasting: Principles and Practice, third edition](https://otexts.com/fpp3/)
* [Advanced R](https://adv-r.hadley.nz/index.html)
* [R for Data Science](https://r4ds.had.co.nz/)
* Numerous research papers taking on a similar task within other countries

#### The final paper can be read [here](https://github.com/Lupercio421/STAT_790_Case_Seminar/blob/main/final_paper/Lupercio_Daniel_STAT_790_final_paper.pdf).

#### The code for the Manhattan time series research can be found on the [MN_ts.Rmd](https://github.com/Lupercio421/STAT_790_Case_Seminar/blob/main/Manhattan_time_series/MN_ts.Rmd) file. The code for the multiple linear regression and dyncamic regression can be found on the [thirteenth_meeting_notes.Rmd](https://github.com/Lupercio421/STAT_790_Case_Seminar/blob/main/multiple_linear_regression/thirteenth_meeting_notes.Rmd) and the [dynamic_regression_attempt.Rmd](https://github.com/Lupercio421/STAT_790_Case_Seminar/blob/main/dynamic_regression/dynamic_regression_attempt.Rmd) files, respectively.
