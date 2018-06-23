data=read.csv('D:/SkySpiriT/NTU/107_DSCD/Project4(Does Karsa make RNG better)(LOL)/RNG.csv')
data
library(arules)
library(arulesViz)
rule <- apriori(data,parameter=list(minlen=4, supp=0.1, conf=0.7),  
                appearance = list(default="lhs",rhs=c("result=Win", "result=Lose")))  
sort.rule <- sort(rule, by="lift")

subset.matrix <- as.matrix(is.subset(x=sort.rule, y=sort.rule))
subset.matrix[lower.tri(subset.matrix, diag=T)] <- NA
redundant <- colSums(subset.matrix, na.rm=T) >= 1
sort.rule <- sort.rule[!redundant]
inspect(sort.rule)
