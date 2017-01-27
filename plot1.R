# read data from given file
dat<-read.table("household_power_consumption.txt",sep = ";",header = TRUE)

#converting Date to Date/Time class
dat$Date<-as.Date(dat$Date,"%d/%m/%Y")

#converting global active power from factor to numeric
dat$Global_active_power<-as.numeric(as.character(dat$Global_active_power))

#selecting Required dates
dat_req<-subset(dat,Date=="2007-02-01" | Date=="2007-02-02")

#drawing histogram
hist(dat_req$Global_active_power,col="red",main="Global Active Power",xlab = "Global Active Power (kilowatts)")

#saving into png
dev.copy(png,file="plot1.png",height=480,width=480)
dev.off()
