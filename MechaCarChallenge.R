library(dplyr)
f <- file.choose()
MechaCarChallenge <- read.csv(file=f, check.names = F,stringsAsFactors = F)
?lm()
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCarChallenge)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCarChallenge))

f2<- file.choose()
MechCar2 <- read.csv(file=f2, check.names = F, stringsAsFactors = F)
total_summary <- MechCar2 %>%  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table
lot_summary <- MechCar2 %>% group_by(Manufacturing_Lot) %>%  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table

?t.test()

# t test for all lots
t.test(MechCar2$PSI,Mean=mean(MechCar2$PSI))

# t test for lot 1
t.test(subset(MechCar2$PSI,MechCar2$Manufacturing_Lot == "Lot1"),Mean=mean(MechCar2$PSI))

# t test for lot 2
t.test(subset(MechCar2$PSI,MechCar2$Manufacturing_Lot == "Lot2"),Mean=mean(MechCar2$PSI))

# t test for lot 3
t.test(subset(MechCar2$PSI,MechCar2$Manufacturing_Lot == "Lot3"),Mean=mean(MechCar2$PSI))
