# import dependencies
library(tidyverse)

# read in csv file
mecha_car <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# create a linear model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car)

# summarize the linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car))
