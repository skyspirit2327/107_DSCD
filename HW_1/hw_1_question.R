### hw_1_question


########################################################### Task 1

# 查看內建資料集: 鳶尾花(iris)資料集
iris

# 使用dim(), 回傳iris的列數與欄數
dim(iris)

# 使用head() 回傳iris的前六列
head(iris)

# 使用tail() 回傳iris的後六列
tail(iris)

# 使用str() 
str(iris)

# 使用summary() 查看iris敘述性統計、類別型資料概述。
summary(iris)

########################################################### Task 2

# 使用for loop 印出九九乘法表
# Ex: (1x1=1 1x2=2...1x9=9 ~ 9x1=9 9x2=18... 9x9=81)
x=1:9
y=1:9
for(i in 1:length(x)){
  for(j in 1:length(y)){
    cat(x[i],'x',y[j],'=',x[i]*y[j])
    cat('\n')
  }
}

########################################################### Task 3

# 使用sample(), 產出10個介於10~100的整數，並存在變數 nums
nums=sample(10:100,10)

# 查看nums
nums

# 1.使用for loop 以及 if-else，印出大於50的偶數，並提示("偶數且大於50": 數字value)
# 2.特別規則：若數字為66，則提示("太66666666666了")並中止迴圈。
j=1
nums=as.numeric(unlist(nums))
even=list()
for(i in 1:length(nums)){
  if(nums[i]%%2==0 & nums[i]>=50){
    even[j]=nums[i]
    j=j+1
  }
}
cat('偶數且大於50:')
for(k in 1:length(even)){
  cat(unlist(even[k]),'')
  if(as.numeric(even[k])==66){
    cat('\n')
    cat('太66666666666了')
    break
  }
}

########################################################### Task 4

# 請寫一段程式碼，能判斷輸入之西元年分 year 是否為閏年
year=function(n){
  if(n%%400==0){
    cat('閏年')
    cat('\n')
  }else if (n%%4==0 & n%%100!=0){
    cat('閏年')
    cat('\n')
  }else{
    cat('不是閏年')
    cat('\n')
  }
}
year(4)
year(100)
year(400)

########################################################### Task 5

# 猜數字遊戲
# 1. 請寫一個由電腦隨機產生不同數字的四位數(1A2B遊戲)
# 2. 玩家可重覆猜電腦所產生的數字，並提示猜測的結果(EX:1A2B)
# 3. 一旦猜對，系統可自動計算玩家猜測的次數
x=list(4)
y=list(4)
x=sample(1:9,4)
i=1
B=0
A=0
guess=function(e,f,g,h){
  y[1]=e
  y[2]=f
  y[3]=g
  y[4]=h
  for(a in 1:4){
    for(b in 1:4){
      if(y[[a]]==x[[b]]){
       B=B+1
      }
    }
  }
  for(c in 1:4){
    if(y[[c]]==x[[c]]){
      A=A+1
    }
  }
B=B-A
i=i+1
return 
cat(A,'A',B,'B')
cat('\n')
if(A==4){
  cat('共猜了',i,'次')
}
}
