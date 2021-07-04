#importing needed files
library(ggplot2)
library(tidyr)
library(dplyr)
library(corrplot)
library(RColorBrewer)

#read file
df <- read.csv("D:/GitHub/data/dsc680/fraudTrain.csv")
fit <- lm(is_fraud ~ trans_date_trans_time + cc_num + merchant + category + amt + city + state + city_pop + trans_num + unix_time , data=df)
summary(fit)