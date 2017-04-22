data_file <- "household_power_consumption.txt"
# if the data file is not yet there, download it.
if(!file.exists(data_file)) {
    temp <- "_temp.zip"
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
    file <- unzip(temp)
    unlink(temp)
}
df <- read.table(data_file, sep = ";", header = TRUE, stringsAsFactors = FALSE, na.strings = "?")
dt <- tbl_df(df)
require(dplyr)
dt <- filter(dt, Date %in% c("1/2/2007", "2/2/2007"))
require(lubridate)
dt$DateTime <- dmy_hms(paste(dt$Date, dt$Time))