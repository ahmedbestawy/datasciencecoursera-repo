dir.create("Electric-power-consumption")
setwd("Electric-power-consumption/")

file_url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(file_url, destfile = "electricdata.zip")
unzip("electricdata.zip")

e_data <- read.table("household_power_consumption.txt",
                     sep = ";",
                     na.strings = "?",
                     header = TRUE) 

str(e_data)
library(dplyr)
library(lubridate)

data_2007 <- e_data %>% mutate(Date.time = as.POSIXct(paste(Date, Time),
                           format="%d/%m/%Y %H:%M:%S"),
                           Date = dmy(Date),
                           Time = hms(Time)) %>%
                           filter(Date == c("2007-2-1","2007-2-2")) %>%
                           relocate(Date.time, .after = Time)
  



