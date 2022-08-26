# Author: Montgomery, Date:8/26/22, Purpose: Calculate T-test on Dummy Data

# Create Some Dummy Data
x = rnorm (10)
y = rnorm (10)

# Visualize/Plot the points in x and y

pts = seq(-4.5, 4.5, length=100)
plot(pts,dt(pts,df=9), col='red', type='l')
lines(density(x), col='green')
lines(density(y), col='blue')

ttest = t.test(x,y)