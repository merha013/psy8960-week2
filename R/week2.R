# Import and Labeling
rt_df <- read.csv("data/week2.csv", header=TRUE)
if(rt_df$condition){"A"=="Control"}else{"Experiment"}
if(rt_df$gender){"M"=="Male"}else{"Female"}

# Analysis
mean(rt_df$rt)
rt_f_df <- data.frame(rt_df, rt_df$gender=="F")
hist(rt_f_df$rt)
datasets <- list(rt_df, rt_f_df)
datasets[[1]][2]


## DO NOT INCLUDE IN FINAL SUBMISSION
# playing around with code to get steps 8 and 9 
rt_df[rt_df$condition=="A"]$condition <- "Control"
rt_df[rt_df$condition=="B"]$condition <- "Experiment"

if(rt_df$condition=="A"){rt_df$condition="Control"}else{rt_df$condition="Experiment"}


factor(rt_df$condition, levels=c("A","B"), labels=c("Control","Experimental"))
typeof(rt_df$condition)
