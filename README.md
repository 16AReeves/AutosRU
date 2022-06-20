# MechaCar_Statistical_Analysis
---
## Module 15 using RStudio and Statistics to Analyze MechaCar Data
---
### Linear Regression to Predict MPG
---
#### The linear regression model results is as follows: 
![mechacar_challenge_lm](https://user-images.githubusercontent.com/98365963/174657075-838d362d-d06a-4b92-b969-dff822ca9026.PNG)
#### The resulting multiple linear regression equation is: 
* #### mpg = (6.267)vehicle_length + (0.0013)vehicle_weight + (0.06877)spoiler_angle + (3.546)ground_clearance - (3.411)AWD - 104.0
#### Linear Regression Summary
* #### According to the above readout, the variables that would cause non-random amount of variance in the mpg values would be: vehicle_length, ground_clearance, as well as the intercept. 
* #### The p-value of the linear model is 5.35e-11, which is much smaller than the significance level of 0.05%. When the p-value is much smaller than the significance level, the null hypothesis is rejected, and the slope of the linear model is considered to not be zero. 
* #### The r-squared value for this model is 0.7146, which means the model can predict mpg of a prototype 71% of the time. This indicates the linear model does predict mpg of prototypes effectively. 
--- 
### Summary Statistics on Suspension Coils
---
#### The summary statistics for the suspension coils based on PSI and by lot is as follows:
PSI Column Summary Statistics: | PSI Column Grouped By Lot Summary Statistics:
--- | --- |
![total_PSI_summary](https://user-images.githubusercontent.com/98365963/174664230-cbf6491a-0143-4e61-88d1-8edc6f3f831c.PNG) | ![lot_PSI_summary](https://user-images.githubusercontent.com/98365963/174664242-28a04ba3-f145-4861-b3dc-dabf0ae94941.PNG)
#### The design specifications for the MechaCar suspension coil dictates that the variance of the suspension coils must not exceed 100 pounds per square inch. Manufacturing Lot 1 does meet this expectation, with a variance of approximately 1 and a standard deviation of nearly 1. Manufacturing Lot 2 does meet this expectation, with a variance of approximately 7.5 and a standard deviation of nearly 3. Manufacturing Lot 3 does not meet this expectation, with a variance of approximately 170.3 and a standard deviation of nearly 13. Lot 3 has a variance far higher than the other lots and is not within specification range. Lot 3 does drive the summary statistics variance of all lots up quite high to 62; however, this variance in the suspension coils of all lots are still within the specification range of less than 100.  
---
### T-Tests on Suspension Coils
---
#### Below are the T-Tests performed on the overall PSI, and the PSI of each individual lot:
Total T-Test for all Lots: | Lot 1 T-Test: 
--- | --- | 
![total_PSI_ttest](https://user-images.githubusercontent.com/98365963/174666630-e654fa0d-d720-46c7-8f9c-0faed7118b94.PNG) | ![lot1_PSI_ttest](https://user-images.githubusercontent.com/98365963/174666639-d98845b5-6dcf-4769-8722-89b421e3c514.PNG) 

Lot 2 T-Test: | Lot 3 T-Test:
--- | --- |
![lot2_PSI_ttest](https://user-images.githubusercontent.com/98365963/174666991-894b3362-f0f3-451d-80c1-f5a7a01bc84a.PNG) | ![lot3_PSI_ttest](https://user-images.githubusercontent.com/98365963/174667001-c368e754-ee93-4d87-9a4e-822a2c473cdf.PNG)
#### For the total t-test PSI across all manufacturing lots, the p-value is 0.06 which is above the assumed significance level of 0.05, meaning we do not have sufficient evidence to reject that the mean for every lot is vastly different than the population mean. For the t-test for Lot 1 and 2 PSI, the p-value of Lot 1 is 1 and the p-value of Lot 2 is 0.61 which is above the assumed significance level of 0.05, meaning we do not have sufficient evidence to reject the null hypothesis therefore the mean for Lot 1 and 2 are not significantly different than the population mean. For the t-test for Lot 3 PSI, the p-value is 0.04 which is below the assumed significance level of 0.05, meaning we do have evidence to reject the null hypothesis therefore, the mean for Lot 3 is significantly different than the population mean. 
---
### Study Design: MechaCar vs Competition
---
#### Below is an outline of a study comparing MechaCars to the competition and what would be needed for the study:
* #### To study the differences of MechaCars versus over competitors, they're many factors and metrics that need to be compared. The MechaCars already have metrics on the PSI, spoiler angle, vehicle weight and length along with ground clearance, mpg, and AWD. These metrics would need to be gathered from the competitors. More metrics to consider to keep consumers in mind are: city and highway fuel efficiency, are the vehicles electric vs gasoline, maintenance, horse power, safety rating, cost, vehicle size, and style of the vehicle. 
* #### The null hypothesis would be if MechaCars have higher standards than the competitors, then MechaCars will be bought more over the competition. The alternative hypothesis would be if MechaCars do not have higher standards than competitors, then MechaCars will not sell. 
* #### There are many statistical tests to be considered for this study. The first test would be linear regression of both cars based on mpg, PSI, horse power, cost, safety rating and more because it would be interesting to see the differences between MechaCars and others. Another test would be to calculate the mean, median, variance, standard deviation, along with the p-value to test how viable the hypothesis is. T-tests would be interesting to compare the different metrics between the cars and models. ANOVA tests may be more appropriate here to look at many metrics at once.  
* #### Data needs to be gathered from many different manufacturers based on the above metrics outlined. MechaCars would need to be reanalyzed to include the extra metrics mentioned in the first bullet of this list. A through check of the data would have to be done to normalize the data assuming the data may be skewed since this is a comparison based on a new vehicle type versus others that have been on the market for many years. The data could be placed into dataframes for comparison. 
