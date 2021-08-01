math_phys <- read.csv("./data/csv/Math&Phys.csv")

math_phys$math

## show histogram
# frequency
hist(math_phys$math)
# relative frequency
hist(math_phys$math, prob=TRUE)
## various histogram
# based on sturges' formula
hist(math_phys$math, breaks = "Sturges")
# Scott's choice
hist(math_phys$math, breaks = "scott")
# Freedman-Diaconis' choice
hist(math_phys$math, breaks = "FD")

## calc statistic
mean(math_phys$math)
var(math_phys$math)
sd(math_phys$math)
median(math_phys$math)
quantile(math_phys$math)
# Q3-Q1
IQR(math_phys$math)
boxplot(math_phys$math)

# geometric mean
x <- c(1.2, 1.5, 1.8, 1.4)
prod(x)^(1/ length(x))

# harmonic mean
v <- c(60, 20)
1/ mean(1 / v)

head(math_phys$math)
tail(math_phys$math)

# calc mode
names(which.max(table(math_phys$math)))
table(math_phys$math) # calc frequency of each value

# missing value
math2 <- c(NA, math_phys$math)
mean(math2)
mean(math2, na.rm = TRUE)
is.na(math2)

