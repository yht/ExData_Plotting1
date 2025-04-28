library(dplyr)
household = read.csv("household_power_consumption.txt", sep=";")
household_fix = household %>% mutate(Timestamp=paste(Date, Time, sep=" ")) %>% 
  mutate(Timestamp=as.Date(Timestamp, "%d/%m/%Y %H:%M:%S"),
         Global_active_power=as.numeric(Global_active_power)) %>% 
  mutate(Weekday=weekdays.Date(Timestamp))
