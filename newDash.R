library(ggplot2)
library(Lahman)
library(dplyr)
library(flexdashboard)

#scatter plot----------------------------------
#extracting the data

result<-Teams%>%
  filter(teamID=='NYA',yearID>1913)%>%
  select(yearID,SO,HR,W,L)

#visualize the data
ggplot()+
  geom_point(data=result,aes(x=SO,y=L),color="navy",size=2)+
  xlab("homeruns")+
  ylab("wins")

#Scatter plot of strikeouts vs. losses after 1913

#histogram--------------------------------------

ggplot()+
  geom_histogram(data=result,aes(x=W),bins=10,color="white",fill="navy")+
  xlab("wins")

ggplot()+
  geom_histogram(data=result,aes(x=L),bins=10,color="white",fill="navy")+
  xlab("losses")

#Histograms of distribution of wins and losses since 1913

#time series------------------------------------

ggplot()+
  geom_point(data=result,aes(x=yearID,y=HR),color="navy")+
  geom_line(data=result,aes(x=yearID,y=HR),color="navy")+
  xlab("year")+
  ylab("homeruns")

ggplot()+
  geom_point(data=result,aes(x=yearID,y=W),color="navy")+
  geom_line(data=result,aes(x=yearID,y=W),color="navy")+
  xlab("year")+
  ylab("wins")


