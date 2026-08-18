snap<-c(12,14,13,96,34,56,20)
length(snap)
mean(snap)
min(snap)
max(snap)

sort(snap, decreasing = FALSE)

x<-c(12,56,78,4,65,23,45,10)
y<-1:20
x+y 
x-y
x%%y
x*y



names(x)<-c("a", "b", "c", "d","e", "f")
x["d"]


snap<-seq(1,9, by = 3)
snap
snap<-rep(snap, times = 2 )

Drivers <- matrix(c(12,32,45,3,2,21,
               12,34,54,66,6,7,
               1,0,6,54,65,43),
             nrow = 3, byrow =TRUE)
rownames(Drivers)<-c("Ben", "Aristo","Nana obeng")
colnames(Drivers)<-c("Mon", "Tues", "Wed", "Thu", "Fri", "Sat")
rowSums(Drivers)
colSums(Drivers)


#creating a data frame we use data.frame
kev<-data.frame(
  age = c(20,21,23,34,54,NA),
  Gender = c("M", "F","M","F","M","M"),
  BloodType = c("A" , "BB", "AA", "O","B","AB"),
  Recovered =c(TRUE,FALSE,TRUE,FALSE,TRUE,TRUE),
  row.names=c("P1" ,"P2","P3","P4","P5","P6")
)

str(kev)
summary(kev)
kev$BloodType
kev[2, "age"]
