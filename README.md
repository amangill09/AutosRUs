# AutosRUs MechaCar Statistical Analysis

**Note:**
I worked with Puneeth N for this challenge. We followed pair-programming methodology and the code and readme were co-created.

# **AutosRUs MechaCar Statistical Analysis**

## **Linear Regression to Predict MPG""

The output of linear regression can be seen here:
![Linear Regression Summary](/data/Deliverable_1.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    vehicle_length and ground_clearance 
- Is the slope of the linear model considered to be zero? Why or why not?
    The p-value from this analysis was 5.35e-11, which is much smaller than our significance level of 0.05. Therefore, we have sufficient evidence to reject the null hypothesis that the slope is not equal to 0.
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    The R-Squared value of this model is 0.71, indicating a moderately strong likelihood (>70% chance) that this model can be used to predict mpg values in the dataset

## **Summary Statistics on Suspension Coils**

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The output can be seen here: 
![Total Summary](/data/Deliverable_2a.png)

![Lot Summary](/data/Deliverable_2b.png)

Looking at each lot individually, we can see that all lots (1-3) produce similar mean PSI values (~1500 PSI), however Lot3 produces extremely high variance (170.28) compared to Lot1 and Lot2 (0.97 and 7.46 respectively). Lot1 and Lot2 meet the design specification, but Lot3 does not since the variance produced by this lot exceeds 100.

## T-Tests on Suspension Coils

Here are the outputs from T Tests:

![All vs 1500](/data/Deliverable_3a.png)

Comparing the PSI values from all manufacturing lots to the population mean produces a p-value of 0.06, which does not pass our signficance level of 0.05. Therefore, we do not have enough evidence to reject the null hypothesis. This means that when analyzing PSI values from all manufacturing lots combined, there is not significant variation in the lots compared to the population mean.

![Lots vs 1500](/data/Deliverable_3b.png)

Same is true for Lot1 and Lot2, however P value for Lot3 is lower than our significance level of .05. Therefore, we have enough evidence to fail to reject the null hypothesis. PSI values from Lot 3 are significantly different from the population mean. This supports our previous findings from the summary table, which revealed that the variance in PSI values from Lot 3 did not meet the design specification for the amount of variance allowed.

**T Test Summary**
- Overall - Meets design specifications

- Lot1 - Meets design specifications

- Lot2 - Meets design specifications

- Lot3 - Does not meet design specifications

## Study Design: MechaCar vs Competition

Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

**What metric or metrics are you going to test?**
To compare vehicle performance of the MechaCar versus its top competitors, AutosRUs should look at two main performance measures:

City and Highway Fuel Efficiency
Horsepower

**What is the null hypothesis or alternative hypothesis?**

H0: There is no statistical difference in the mean Fuel Efficiency and Horsepower between the MechaCar and its competitors.
HA: There is a statistical difference in the mean Fuel Efficiency and Horsepower between the MechaCar and its competitors.

**What statistical test would you use to test the hypothesis? And why?**

Fuel Efficiency (Miles Per Gallon)
A two-sample T-Test should be used to perform this analysis since the independent variable is split (MechaCar vs. Competitors) and the dependent variable (MPG) is continuous.
Horsepower
A two-sample T-Test should be used to perform this analysis since the independent variable is split (MechaCar vs. Competitors) and the dependent variable (horsepower) is continuous.

**What data is needed to run the statistical test?**
The data that is needed to run the tests will need to be gathered for both competitors and the MechaCar. Data will be needed for two continuous numerical data types:

Fuel Efficiency: Fuel Efficiency can be measured by calculating how many miles per gallon the car can achieve at optimal level for both city and highway driving.
Horsepower: Horsepower can be measured by each vehicle's torque and tire rotations per minute (RPM) on a dynamometer