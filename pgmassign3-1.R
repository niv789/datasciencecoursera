best<-function(state,out)
{
  outcome1<-read.csv("outcome-of-care-measures.csv",colClasses ="character")
  if(out=="Heart.Attack")
    e<-outcome1[11]
  if(out=="Heart.Failure")
    e<-outcome1[17]
  if(out=="Pneumonia")
    e<-outcome1[23]
  d<-cbind(e,Hospital=outcome1$Hospital.Name,State=outcome1$State)
  d<-d[d$State==state,]
  d[order(d[,1],d[,2]),]
  head(d,1)
  h<-"error"
  if(dim(d)==0)
    h
}