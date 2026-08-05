# Lecture 01 (5/8/26)
# simulating a die roll 10,100, and 10000 times

set.seed(42)

die<-1:6

die10<-sample(die,10,replace=TRUE,prob=NULL)
print(table(die10))
print(prop.table(table(die10)))

die100<-sample(die,100,replace=TRUE,prob=NULL)
print(table(die100))
print(prop.table(table(die100)))

die10000<-sample(die,10000,replace=TRUE,prob=NULL)
print(table(die10000))
print(prop.table(table(die10000)))
