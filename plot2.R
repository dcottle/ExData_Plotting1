enrg_df<-read.csv("exdata_data_household_power_consumption/household_power_consumption.txt", sep=";", colClasses="character")
enrg_df$Date<-as.Date(enrg_df$Date, format="%d/%m/%Y")
begin_dt<- as.Date("2007-02-1")
end_dt<- as.Date("2007-02-2")
test4<-enrg_df[enrg_df$Date==begin_dt | enrg_df$Date==end_dt,]
png(file="plot2.png")
plot(test4[,3], type="l", ylab="Global Active Power (kilowatts)", xaxt="n", xlab="")
axis(side=1, labels=c("Thu", "Fri", "Sat"), at=c(0, 1440, 2880))
dev.off()