data(mtcars)
split <- sample.split(mtcars,SplitRatio=0.7)
split

training <- subset(mtcars,split == "TRUE")

testing <- subset(mtcars,split == "FALSE")

model <- glm(vs~wt+disp, training, family="binomial")