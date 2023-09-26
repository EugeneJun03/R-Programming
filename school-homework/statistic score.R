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

#줄기-잎 그림
stem(stat_score)

#상자 그림
x11()
boxplot(stat_score, main="통계학 성적", ylab="score")

#도수분포표
x11()
xh <- hist(stat_score)
str(xh)
#7개의 구간의 경계치(breaks), 구간별 도수(counts), 밀도(density), 중간값(mids)

#결과 정리
xh$breaks
xh$counts
xh$density
xh$mids
(n <- length(stat_score))   #식 전체를 괄호로 묵으면 결과가 출력됨
(xcf <- cumsum(xh$counts))  #구간별 누적도수
(xrf <- xh$counts/n)        #구간별 상대도수(밀도?)
round(xrf,3)
xrcf <- xcf/n
round(xrcf,3)
xclass <- paste0("(",xh$breaks[-7],",",xh$breaks[-1],"]"); xclass   #구간을 벡터로 정리
                                                                    #paste0()함수 사용
                                                                    #한줄에서 여러개의 명령어를 사용할때 ";"로 구분
xtab <- cbind(xh$mids,xh$counts,xcf,xrf,xrcf)   #열별로 묶음
rownames(xtab) <- xclass
colnames(xtab) <- c("대표값","도수","누적도수","상대도수","상대누적도수")   #행과열의 이름지정
print(xtab)