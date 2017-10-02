library(ggplot2)
library(Lahman)
library(dplyr)
library(flexdashboard)

#scatter plot----------------------------------
  #extracting the data

result<-Batting%>%
          filter(playerID=='ruthba01')%>%
          select(SO,HR)

  #visualize the data
ggplot()+
  geom_point(data=result,aes(x=SO,y=HR))+
  xlab("strikeouts")+
  ylab("homeruns")

#histogram--------------------------------------

ggplot()+
  geom_histogram(data=result,aes(x=HR),bins=5,color="blue",fill="white")+
  xlab("homeruns")

#time series------------------------------------

result<-Batting%>%
  filter(playerID=='ruthba01')%>%
  select(yearID,SO,HR)

ggplot()+
  geom_point(data=result,aes(x=yearID,y=HR))+
  geom_line(data=result,aes(x=yearID,y=HR))+
  xlab("year")+
  ylab("homeruns")

#in dashboard
#Column {data-width=650}
#Column {data-width=350}
#common to use total of 1000

#http://rmarkdown.rstudio.com/flexdashboard/layouts.html#input_sidebar

#do at least one example of a dashboard, can use this one for now.
#doesn't work well as blog post. write a post about dashboards and then link to where you put your dashboard.
#put dashboard on simple website that is hosted on github. then link to website on blog.




