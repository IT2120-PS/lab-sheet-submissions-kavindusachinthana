getwd()
setwd("D:\\SLIIT LECTURES\\Y2 S1\\Lab sheets & answers\\PS (IT2120)\\lab5")
getwd()

#1
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
print(Delivery_Times)

#2

hist(Delivery_Times$Delivery,
     breaks = seq(20, 70, length.out = 10),
     right = FALSE,                
     col = "skyblue",
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency")

#4 
#cumulative frequency polygon (ogive) for the data

hist_data <- hist(Delivery_Times$Delivery,
                  breaks = seq(20, 70, length = 10),
                  right = FALSE,
                  plot = FALSE)

cumulative_freq <- cumsum(hist_data$counts)

plot(hist_data$mids, cumulative_freq,
     type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Times",
     ylab = "Cumulative Frequency",
     pch = 16,
     col = "navy")