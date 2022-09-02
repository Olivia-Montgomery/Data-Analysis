#Author: Montgomery, Date: 9/2/22, Purpose: Calculating correlation analysis

library("ggpubr")

#Loading Some Sample Data
#anytihng above 0.5 is a strong 
my_data<-mtcars

head(my_data)

ggscatter(my_data,x = "mpg",y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US)gallon", ylab = "Weight(1000 lbs)")

res <- cor.test(my_data$wt,my_data$mpg,method= "pearson")
res