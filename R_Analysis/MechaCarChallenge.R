#Deliverable 1:

# import dependencies
library(tidyverse)

# read in csv file
mecha_car <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# create a linear model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car)

# summarize the linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car))


# Deliverable 2:

# read in csv file
car_coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# summarize PSI Column
total_summary <- car_coil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_PSI=sd(PSI), .groups= "KEEP")

# summarize data by manufacturing lot
lot_summary <- car_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_PSI=sd(PSI), .groups= "keep")
