# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle.

Call:
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    ground_clearance + AWD, data = MechaCarChallenge)

Coefficients:
     (Intercept)    vehicle_length    vehicle_weight     spoiler_angle  ground_clearance               AWD  
      -1.040e+02         6.267e+00         1.245e-03         6.877e-02         3.546e+00        -3.411e+00  
      
#### Summary of Linear Regression

Call:
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    ground_clearance + AWD, data = MechaCarChallenge)

Residuals:
     Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11      

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**
* No variables provide a non-random amount of variance to the mpg values in the dataset because the pr(>|t|) values are greater than 0.05. This means there is no significant impact on the mpg values and we can reject the null hypothesis.

**Is the slope of the linear model considered to be zero? Why or why not?**
* All the variables/coefficients are directly proportional to the mpg values, therefore the slope of the linear model is not considered to be zero.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
* The linear model does not predict mpg of MechaCar prototypes effectively because the p value of the multiple linear regression is 5.35e-11 which is higher than 0.05 and is not signficant.

## Summary Statistics on Suspension Coils 

The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. 

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.**
* The total_summary table below indicates the Mean, Median, Variance, and Standard Deviation for the PSI of the suspension coils across all manufacturing lots. The variance is less than 100 PSIs, therefore meeting the design specification.

![Image Total Summary](https://github.com/mcginav/MechaCar_Statistical_Analysis/blob/main/total_summary.PNG)

* The lot_summary table below shows the Mean, Median, Variance, and Standard Deviation for the PSI of the suspension coils broken down by each manufacturing lot. 
* The variance for Lots 1 and 2 are below 100 PSI and meet specifications. Lot 3 has a variance higher than 100, therefore does not meet the standard.

![Image Lot Summary](https://github.com/mcginav/MechaCar_Statistical_Analysis/blob/main/lot_summary.PNG)

## T-Tests on Suspension Coils

T-tests were used to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

* For all lots, the p-value is 1. Because it is greater than 0.05 it is not significant and the null hypothesis can be accepted.
![Image t-test all lots](https://github.com/mcginav/MechaCar_Statistical_Analysis/blob/main/t.test_all_lots.PNG)

* For lot 1, the p-value is 1.568e-11. Because it is greater than 0.05 it is not significant and the null hypothesis can be accepted. 
![Image t-test lot 1](https://github.com/mcginav/MechaCar_Statistical_Analysis/blob/main/t.test_lot1.PNG)

* For lot 2, the p-value is 0.0005911. Because it is less than 0.05 it is significant and the null hypothesis cannot be accepted.
![Image t-test lot 2](https://github.com/mcginav/MechaCar_Statistical_Analysis/blob/main/t.test_lot2.PNG)

* For lot 3, the p-value is 0.1589. Because it is greater than 0.05 it is not significant and the null hypothesis can be accepted.
![Image t-test lot 3](https://github.com/mcginav/MechaCar_Statistical_Analysis/blob/main/t.test_lot3.PNG)

## Study Design: MechaCar vs Competition

Many metrics can be studied using the data from the MechaCar vs the competition. 
* The metrics I would test would include fuel efficiancy, safety ratings, dependability, and price.
* The null hypothesis is that the MechaCar performs similarly to the competition. 
* To test the hypothesis I would use a two-sample t-test using the subsets af the different metrics. This would determine how the mean for each metric of the Mechacar would relate to the competitors. We can determine which areas are better in the MechaCar than the competition, and which areas may need improvement in future generations. 
* The data is needed to run the statistical tests would include mpg, crash data with injury reports, repair frequency and cost of repairs, price. 
* We would need this data for the MechaCar and its competitors. 
* The data should be continuous, numerical, and normally distributed. 
