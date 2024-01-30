# Import and Labeling
rt_df <- read.csv("data/week2.csv", header=TRUE)
rt_df$condition <- factor(rt_df$condition, levels=c("A","B"), labels=c("Control","Experimental"))
rt_df$gender <- factor(rt_df$gender, levels=c("M","F","N"), labels=c("Male","Female","Nonbinary"))

# Analysis
mean(rt_df$rt)
rt_f_df <- subset(rt_df, rt_df$gender=="Female")
hist(rt_f_df$rt, main="Histogram of Female Reaction Times", xlab="Reaction Times")
datasets <- list(rt_df, rt_f_df)
datasets[[1]][2]
# above says [[extract]] [subset]

# Another option for how to subset Female gender
rt_f_df2 <- rt_df[rt_df$gender == "Female",]

# Another option for how to display the contents of the rt variable from the first dataset contained within datasets
datasets[[1]][[2]]
datasets[[1]]$rt