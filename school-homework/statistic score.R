stat_score <- c(89, 80, 68, 63, 68, 51, 83, 63, 37, 56,
78, 38, 73, 77, 83, 78,72,56,52,61,
67,59,82,68,78,59,87,44,42,66,68,91,96,68,75,80,78,69,98,73)

x11()   #그림을 새로운 창으로 나타냄
par(mfrow = c(2,2))    #그림화면에 2*2(4)개의 그래프를 나타냄
hist(stat_score, breaks=4,main="통계학 성적",xlab="score")  #히스토그램, 계급의 개수(4개)
hist(stat_score,main="통계학 성적",xlab ="score")           #히스토그램, default
hist(stat_score,breaks=15,main="통계학 성적", xlab="score") #히스토그램, 계급의 개수(15개)
hist(stat_score,breaks=30,main="통계학 성적", xlab="score") #히스토그램, 계급의 개수(30개)
x11()
hist(stat_score,prob=T,main="통계학 성적",xlab="score")
