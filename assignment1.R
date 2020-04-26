pollutantmean<-function(directory,pollutant,id=1:332)
{
  files<-list.files(directory,full.names = TRUE)
  datas<-data.frame()
  for (i in id)
  {
    datas <- rbind(datas,read.csv(files[i]))
  }
  r<-na.omit(datas[pollutant])
  round(mean(r[[pollutant]]),3)

}