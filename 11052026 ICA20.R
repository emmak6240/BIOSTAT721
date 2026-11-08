#Emma Kuok
#11052026
# Function Practice Problem -- ICA20

#importing the file
temp<-read.csv("data_temp.csv")


#write a function to convert temperature of celsius to farenheit
head(temp)


farenheit_calc <- function(c) {
  farenheit <-  round((c * 9/5) + 32, 0)
  return(list(c=c, farenheit = farenheit))
}

#applying the function
library(readr)
library(lubridate)
# apply the function
updated_temp <- data.frame(
  date       = mdy(temp$date),
  maxTemp_C  = temp$maxTemp,
  maxTemp_F  = farenheit_calc(temp$maxTemp)
)

head(updated_temp, 10)

