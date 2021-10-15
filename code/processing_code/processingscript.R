###############################
# processing script
#
#this script loads the raw data, processes and cleans it 
#and saves it as Rds file in the processed_data folder

#load needed packages. make sure they are installed.
library(readxl) #for loading Excel files
library(dplyr) #for data processing
library(here) #to set paths
library(tidyverse)#data wrangling and cleaning
library(tidymodels) #data abalysis

#load data from SympAct_Any_Pos.Rda.
#we are using the readRDS function with "../../" argument because it calls the
#file we want to load relative to the starting working directory of the
#processing script. It works essentially the same as the here function, but is
#just how I learned to reference between locations.
rawdata_location <- here::here("data","raw_data","SympAct_Any_Pos.Rda")

rawdata <- readRDS(rawdata_location)

#take a look at the data. Always good practice to get oriented with a new df.
dplyr::glimpse(rawdata)

#print data set. Since I am still a beginner, it helps me to visually see the df.
#You don't have to open up the df, but it is still useful to me.
print(rawdata)

#Remove variables: score, Total, FluA, FluB, DxName, and Activity.
#Instead of going in and copying the large number of variables with names 
#permeating from the phrases we want to delete, I used the nested contains()
#function within select(). This selects any variable with a name that contains
#listed phrase. to remove these selected variables, I added the "minus" argument.
clean_data <- rawdata %>%
  select(-contains(c( 
    "FluB", 
    "Score", 
    "Total", 
    "FluA", 
    "DxName", 
    "Activity",
    "Unique.Visit")))

#Remove NAs.
clean_data2 <- clean_data %>%
  na.omit()

#Summarize the clean_data df to get an idea of the changes just made.
summary(clean_data2)


# location to save file
save_data <- here::here("data", "processed_data", "processeddata.rds")

saveRDS(clean_data2, file = save_data)


