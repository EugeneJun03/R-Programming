# 엑셀파일을 불러오기
# install.packages("psych")
library(psych)
df1 <- read_excel("D:/R-Programming/school-homework/ch2_ex3.xlsx")
# describe()는 더욱 다양한 통계값을 나타낸다.
describe(df1)

# 두개의 변수를 가지는 엑셀 분석
df2 <- read_excel("D:/R-Programming/school-homework/ch2_ex7.xlsx")
x <- c(df2$첫째길이,df2$둘째길이)
y <- c(df2$첫째폭, df2$둘째폭)

# 분산 = var(x),공분산 = cov(x,y), 상관계수 = cor(x,y), 표준편차 = sd(x)
var(x)
sd(x)
cov(x,y)
cor(x,y)

# 이항 분포 개별값 dbinom(x, n, p)
# X가 이항분포 B(10, 0.2)일 경우, P[X=2]의 확률값
dbinom(2,10,0.2)

#이항 분포 누적 pbinom(q,n)
# X가 이항분포 B(10, 0.2)일 경우, P[X<=3]의 확률값
pbinom(3,10,0.2)



# P(X = 15) in 포아송 분포 with lambda = 20
dpois(x=15, lambda = 20)

# P(X <= 15) in 포아송 분포 with lambda = 20
ppois(q=15, lambda = 20)


# 정규분포 pnorm(x, mean=, sd=)
# X~N(30,4^2), p(x>=36), 따로 Z값을 구하지 않아도 된다.
pnorm(36, 30, 4)

dnorm(36, 30, 4)

#확률로 Z값 구하기
qnorm(0.9331928)
