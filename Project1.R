#Downloading and cleaning the dataset
url1 <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
destfile <- "household_power_consumption.zip"
download.file(url1, destfile, mode = "wb")
unzip(destfile)
dt <- read.csv("household_power_consumption.txt", header=TRUE, sep=';',nrows=2075259, na.strings="?",check.names=F, stringsAsFactors=FALSE, comment.char="", quote='\"')
dt$Date <- as.Date(dt$Date, format="%d/%m/%Y")
Finaldt <- subset(dt, Date >= "2007-02-01" & Date <= "2007-02-02")
datetime <- paste(as.Date(Finaldt$Date), Finaldt$Time)
Finaldt$Datetime <- as.POSIXct(datetime)
