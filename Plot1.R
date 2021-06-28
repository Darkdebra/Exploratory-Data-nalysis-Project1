data <- read.table("household_power_consumption.txt", header=TRUE,sep=";",stringsAsFactors=FALSE,dec=".")

##reads data

subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
globalActivePower <- as.numeric(subsetdata$Global_active_power)

##transforms data

png("plot1.png", width=480, height =480)

##opnes png device

hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

##plots data

dev.off()

##closes png device