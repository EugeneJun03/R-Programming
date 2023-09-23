APT_income <- c(350,350,450,450,400,400,450,450,550,520,500,500,650,550,520,500,
500,5000,7500,600,650,700,550,530,500,500,500,500,450,450,
530,510,500,500,450,450)
length(APT_income)

#자료의 중심을 나타내는 수치 측도
mean(APT_income)            #평균
median(APT_income)          #중앙값
mean(APT_income, trim=0.1)  #10%절사평균

#최빈값 생성을 위한 함수 사용
mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))] #data항목중에서 빈도수가 높은 값 도출
}
mode(APT_income)    #최빈값

#자료의 산포를 나타내는 수치 측도
var(APT_income)         #분산
sd(APT_income)          #표준편차
quantile(APT_income)    #사분위수
IQR(APT_income)         #사분위수 범위
range(APT_income)       #범위

#자료의 수치 요약
summary(APT_income)     #최솟값, Q1,Q2,Q3,Q4(최대값)