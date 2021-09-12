## Ex 6
## a. Make a time series plot for the data
library(TSA)
data(co2)
plot(co2, main="Plot of CO2 levels over time", ylab="CO2 levels", xlab="Year", type="o")

# more information with seasonality
plot(co2, main="Plot of CO2 levels over time", ylab="CO2 levels", xlab="Year", type="l")
points(y=co2, x=time(co2), pch=as.vector(season(co2)), cex=0.75)

## b. model the trend of the data
model  = lm(co2 ~ time(co2))
summary(model)

## c. Construct a plot which superimposes the least squares fit 
## over the time series plot from part b
abline(model)

## d. Create a plot of the residuals from the least squares fit versus time
plot(y=resid(model), x=as.vector(time(co2)), xlab="Year", ylab="Residuals", type="l")
points(y=resid(model), x=as.vector(time(co2)), pch=as.vector(season(co2)), cex=0.75)

## e. Make a plot of the sample autocorrelations of the residuals
acf(resid(model))
