#Poisson is a model for counts of random events per unit time (or space) when arrivals are independent and occur at a roughly constant average rate
#lamda is mean and variance nd poisson's only parameter

set.seed(123)
demand=rpois(100, lambda=50)
mean(demand)
sd(demand)
#To show how data is distributed (how often values occur across ranges)
hist(demand)

stock_level=60
stockout= ifelse(demand>stock_level,1,0)
head(stockout)

stockoutfraction=mean(stockout)
stockoutfraction
service_level=1-stockoutfraction
service_level

#How often do we manage to give customers what they want, from stock, without delay or stockout?

