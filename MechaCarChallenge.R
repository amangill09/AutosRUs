install.packages("tidyverse")
install.packages("jsonlite")

install.packages("splitstackshape")
install.packages("reshape2")
install.packages("devtools")
install.packages("plotly")
install.packages("crosstalk")
install.packages("DT")
install.packages("fivethirtyeight")
install.packages("dplyr")


library(jsonlite)
library(tidyverse)

MechaCar_mpg_df <- read.csv(file = "MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=MechaCar_mpg_df)

summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=MechaCar_mpg_df))


Suspension_Coil_df <- read.csv(file = "Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

total_summary <- summarize(Suspension_Coil_df, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary <- Suspension_Coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

t.test((Suspension_Coil_df$PSI),mu=1500) # compare all manufacturing lots to the population mean

lot1 <- Suspension_Coil_df %>% filter(Manufacturing_Lot=="Lot1")
lot2 <- Suspension_Coil_df %>% filter(Manufacturing_Lot=="Lot2")
lot3 <- Suspension_Coil_df %>% filter(Manufacturing_Lot=="Lot3")


t.test((lot1$PSI),mu=1500) # compare lot1 to the population mean
t.test((lot2$PSI),mu=1500) # compare lot2 to the population mean
t.test((lot3$PSI),mu=1500) # compare lot3 to the population mean
