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


# Deliverable 3:

# T-Test of PSI across all lots 
t.test(car_coil$PSI,mu=1500)

# Subset the Lots
lot_1 <- subset(car_coil, Manufacturing_Lot=="Lot1")
lot_2 <- subset(car_coil, Manufacturing_Lot=="Lot2")
lot_3 <- subset(car_coil, Manufacturing_Lot=="Lot3")

# T-Test of PSI on Lot 1
t.test(lot_1$PSI,mu=1500)

# T-Test of PSI on Lot 2
t.test(lot_2$PSI,mu=1500)

# T-Test of PSI on Lot 3
t.test(lot_3$PSI,mu=1500)
