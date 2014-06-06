enrg_df<-read.csv("exdata_data_household_power_consumption/household_power_consumption.txt", sep=";", colClasses="character")
enrg_df$Date<-as.Date(enrg_df$Date, format="%d/%m/%Y")
begin_dt<- as.Date("2007-02-1")
end_dt<- as.Date("2007-02-2")
test4<-enrg_df[enrg_df$Date==begin_dt | enrg_df$Date==end_dt,]
png(file="plot1.png")
hist(as.numeric(test4[,3]), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()