blood <- c(9, 10, 8, 13)    #혈핵형 빈도
names(blood) <- c("A", "B", "AB", "O")  #라벨링
blood
prop.table(blood)       #상대도수 분포표

#막대그래프
x11()
par(mfrow = c(1, 2))    #그림화면에 1*2(2개)의 그래프를 나타냄
barplot(blood, col = "blue", main = "혈핵형 막대그래프")            #수직 막대 그래프
barplot(blood, horiz = T, col = "blue", main = "혈핵형 막대그래프")   #수평 막대 그래프

#원형그래프
x11()
par(mfrow = c(1, 2))
pie(blood, main="혈핵형 원형그래프")
#원형그래프 색 지정
slices = c("blue", "red", "yellow", "grey")
pie(blood, col=slices,main="혈핵형 원형그래프")
