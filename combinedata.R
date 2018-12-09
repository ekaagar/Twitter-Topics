#first step reading each csv file 
#next step put each of them in data frame 
#lastly row combine the datasets together
IRA1<-read.csv("IRAhandle_tweets_1.csv")
IRA2<-read.csv("IRAhandle_tweets_2.csv")
IRA3<-read.csv("IRAhandle_tweets_3.csv")
IRA4<-read.csv("IRAhandle_tweets_4.csv")
IRA5<-read.csv("IRAhandle_tweets_5.csv")
IRA6<-read.csv("IRAhandle_tweets_6.csv")
IRA7<-read.csv("IRAhandle_tweets_7.csv")
IRA8<-read.csv("IRAhandle_tweets_8.csv")
IRA9<-read.csv("IRAhandle_tweets_9.csv")
IRA1<-data.frame(IRA1)
IRA2<-data.frame(IRA2)
IRA3<-data.frame(IRA3)
IRA4<-data.frame(IRA4)
IRA5<-data.frame(IRA5)
IRA6<-data.frame(IRA6)
IRA7<-data.frame(IRA7)
IRA8<-data.frame(IRA8)
IRA9<-data.frame(IRA9)
first2<-rbind(IRA1, IRA2)
second<-rbind(IRA3,first2)
third<-rbind(second, IRA4)
forth<-rbind(third, IRA5, IRA6)
last<-rbind(forth, IRA7, IRA8, IRA9)
View(last)
colnames(last)
last$following<- NULL
last$followers<- NULL
last$updates<- NULL
last$post_type<- NULL
last$new_june_2018 <-NULL
last$retweet<-NULL
last$harvested_date<-NULL
last$external_author_id<NULL
last$external_author_id<NULL
last$author<-NULL
last$region<- NULL
last$language<- NULL
last$account_category<- NULL
last$publish_date<- NULL
last$account_type<-NULL
last$external_author_id<-NULL
data.frame(last)
write.csv(last, file = "IRAA.csv")

