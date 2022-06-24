library(readxl)

data <- read_xls("data.xls")
# x <- data[2:6]
# y <- data[7]

ols <- lm(y~., data=data[-1])
ols_step <- step(ols,direction='both')
print(summary(ols_step))
