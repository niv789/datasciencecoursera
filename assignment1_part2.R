complete<-function(directory,id=1:332)
{
  files<-list.files(directory,full.names = TRUE)
  datas<-data.frame(file_name=integer(0),completecases=integer(0))
  for (i in 1:length(id))
  {
    datas[i,1]<-id[i] #first col od data frame
    datas[i,2]<- sum(complete.cases (read.csv(files[id[i]]))) #second col
  }
  datas #keeps only the complete rows(rows without NA)
}