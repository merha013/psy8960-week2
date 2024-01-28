# Import and Labeling
rt_df <- read.csv("data/week2.csv", header=TRUE)
rt_df$condition <- factor(rt_df$condition, levels=c("A","B"), labels=c("Control","Experimental"))
rt_df$gender <- factor(rt_df$gender, levels=c("M","F","N"), labels=c("Male","Female","Nonbinary"))

# Analysis
mean(rt_df$rt)
rt_f_df <- data.frame(rt_df, rt_df$gender=="Female")
hist(rt_f_df$rt, main="Histogram of Female Reaction Times", xlab="Reaction Times")
datasets <- list(rt_df, rt_f_df)
datasets[[1]][2]