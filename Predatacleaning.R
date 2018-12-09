library(tm)
library(NLP)
library(stringr)
library(jsonlite)
library(dplyr)
#Reading 1 million tweets from read.csv
data<-read.csv("IRAA.csv")
#cleaning the data
#removing 1 or 2 letters words and some symboles 
data$content<- gsub(" *\\b[[:alpha:]]{1,2}\\b *", " ", data$content)
data$content<- str_replace_all(data$content, "√ë", "")
data$content<- str_replace_all(data$content, "√ê", "")
data$content<- str_replace_all(data$content, "√¢", "")
data$content<- str_replace_all(data$content, "∫", "")
data$content<- str_replace_all(data$content, "¬", "")
data$content<- str_replace_all(data$content, "√", "")
data$content<- str_replace_all(data$content, "µ", "")

#lower case the words in data
data$content<- tolower(data$content)
#removed the website
data$content= gsub("@\\w+", "", data$content)
data$content = gsub("http\\w+", "", data$content)
data$content <- gsub("(s?)(f|ht)tp(s?)://\\S+\\b", "", data$content)
#removing the punctions 
data$content <- gsub('[[:punct:]]', '', data$content)
#removing the digits 
data$content <- gsub('[[:digit:]]+', '', data$content)
data$content <- gsub("&amp", "", data$content)
data$content <- gsub("(RT|via)((?:\\b\\W*@\\w+)+)", "", data$content)
#removing stop words and special characters
data1<-data$content
data1<-str_replace_all(data1, "[^[:alnum:]]", " ")
data1<- Corpus(VectorSource(data1))
data1 <-tm_map(data1, removeWords, stopwords("english"))
df <- data.frame(text = get("content", data1 ))
colnames(df)
colnames(data)
data$content<-NULL
MyData<- cbind(data,df)
colnames(MyData)
MyData$X<-NULL
MyData$Unnamed..0<-NULL
MyData$X.1<-NULL
MyData<-data.frame(MyData)
MyData$content<-as.String(MyData$content)
View(MyData)
write.csv(MyData, "Semicleantweet.csv")