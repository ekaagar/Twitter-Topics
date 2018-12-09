library("wordcloud")
library("RColorBrewer")
library("NLP")
library(stringr)
library(jsonlite)
library(NLP)
library(tm)
library(dplyr)


#Due to size of each csv file and capability of RStudio please run each topic separately
#For each topic we selected 28000 line of tweets in 14 different csv files.
#first step for each topic, we read the csv file, we formed the corpus and create 
#term frequency matix, sort in decreasing format and show top 20 frequent word in topic in bar chart
#TOPIC 13
data13<-read.csv("Topic13.csv")
docs13 <-Corpus(VectorSource(data13$cleaned_content))
dtm13 <-TermDocumentMatrix(docs13)
m13 <- as.matrix(dtm13)
v13 <- sort(rowSums(m13),decreasing=TRUE)
d13 <- data.frame(word = names(v13),freq=v13)
head(d13, 20)
barplot(d13[1:20,]$freq, las = 2, names.arg = d13[1:20,]$word,
        col ="lightblue", main ="Most frequent in topic 13",
        ylab = "Word frequencies")

#TOPIC12
#Code steps the same as to topic 13
data12<-read.csv("Topic12.csv")
docs12 <-Corpus(VectorSource(data12$cleaned_content))
dtm12 <-TermDocumentMatrix(docs12)
m12 <- as.matrix(dtm12)
v12 <- sort(rowSums(m12),decreasing=TRUE)
d12 <- data.frame(word = names(v12),freq=v12)
head(d12, 20)
barplot(d12[1:20,]$freq, las = 2, names.arg = d12[1:20,]$word,
        col ="lightblue", main ="Most frequent in topic 12",
        ylab = "Word frequencies")

#TOPIC11
#Code steps the same as to topic 12
data11<-read.csv("Topic11.csv")
docs11 <-Corpus(VectorSource(data11$cleaned_content))
dtm11 <-TermDocumentMatrix(docs11)
m11 <- as.matrix(dtm11)
v11 <- sort(rowSums(m11),decreasing=TRUE)
d11 <- data.frame(word = names(v11),freq=v11)
head(d11, 20)
barplot(d11[1:20,]$freq, las = 2, names.arg = d11[1:20,]$word,
        col ="lightblue", main ="Most frequent in topic 11",
        ylab = "Word frequencies")

#TOPIC10
#Code steps the same as to topic 11
data10<-read.csv("Topic10.csv")
docs10 <-Corpus(VectorSource(data10$cleaned_content))
dtm10 <-TermDocumentMatrix(docs10)
m10 <- as.matrix(dtm10)
v10 <- sort(rowSums(m10),decreasing=TRUE)
d10 <- data.frame(word = names(v10),freq=v10)
head(d10, 20)
barplot(d10[1:20,]$freq, las = 2, names.arg = d10[1:20,]$word,
        col ="lightblue", main ="Most frequent in topic 10",
        ylab = "Word frequencies")

#TOPIC9
#Code steps the same as to topic 10
data9<-read.csv("Topic9.csv")
docs9 <-Corpus(VectorSource(data9$cleaned_content))
dtm9 <-TermDocumentMatrix(docs9)
m9 <- as.matrix(dtm9)
v9 <- sort(rowSums(m9),decreasing=TRUE)
d9 <- data.frame(word = names(v9),freq=v9)
head(d9, 20)
barplot(d9[1:20,]$freq, las = 2, names.arg = d9[1:20,]$word,
        col ="lightblue", main ="Most frequent in topic 9",
        ylab = "Word frequencies")

#TOPIC8
#Code steps the same as to topic 9
data8<-read.csv("Topic8.csv")
docs8 <-Corpus(VectorSource(data8$cleaned_content))
dtm8 <-TermDocumentMatrix(docs8)
m8 <- as.matrix(dtm8)
v8 <- sort(rowSums(m8),decreasing=TRUE)
d8 <- data.frame(word = names(v8),freq=v8)
head(d8, 20)
barplot(d8[1:20,]$freq, las = 2, names.arg = d8[1:20,]$word,
        col ="lightblue", main ="Most frequent in topic 8",
        ylab = "Word frequencies")

#TOPIC7
#Code steps the same as to topic 8
data7<-read.csv("Topic7.csv")
docs7 <-Corpus(VectorSource(data7$cleaned_content))
dtm7 <-TermDocumentMatrix(docs7)
m7 <- as.matrix(dtm7)
v7 <- sort(rowSums(m7),decreasing=TRUE)
d7 <- data.frame(word = names(v7),freq=v7)
head(d7, 20)
barplot(d7[1:20,]$freq, las = 2, names.arg = d7[1:20,]$word,
        col ="lightblue", main ="Most frequent in topic 7",
        ylab = "Word frequencies")
#TOPIC6
#Code steps the same as to topic 5
data6<-read.csv("Topic6.csv")
docs6 <-Corpus(VectorSource(data6$cleaned_content))
dtm6 <-TermDocumentMatrix(docs6)
m6 <- as.matrix(dtm6)
v6 <- sort(rowSums(m6),decreasing=TRUE)
d6 <- data.frame(word = names(v6),freq=v6)
head(d6, 20)
barplot(d6[1:20,]$freq, las = 2, names.arg = d6[1:20,]$word,
        col ="lightblue", main ="Most frequent in topic 6",
        ylab = "Word frequencies")
#TOPIC5
#Code steps the same as to topic 6
data5<-read.csv("Topic5.csv")
docs5 <-Corpus(VectorSource(data5$cleaned_content))
dtm5 <-TermDocumentMatrix(docs5)
m5 <- as.matrix(dtm5)
v5 <- sort(rowSums(m5),decreasing=TRUE)
d5 <- data.frame(word = names(v5),freq=v5)
head(d5, 20)
barplot(d5[1:20,]$freq, las = 2, names.arg = d5[1:20,]$word,
        col ="lightblue", main ="Most frequent in topic 5",
        ylab = "Word frequencies")

#TOPIC4
#Code steps the same as to topic 5
data4<-read.csv("Topic4.csv")
docs4 <-Corpus(VectorSource(data4$cleaned_content))
dtm4 <-TermDocumentMatrix(docs4)
m4 <- as.matrix(dtm4)
v4 <- sort(rowSums(m4),decreasing=TRUE)
d4 <- data.frame(word = names(v4),freq=v4)
head(d4, 20)
barplot(d4[1:20,]$freq, las = 2, names.arg = d4[1:20,]$word,
        col ="lightblue", main ="Most frequent in topic 4",
        ylab = "Word frequencies")

#TOPIC3
#Code steps the same as to topic 4
data3<-read.csv("Topic3.csv")
docs3 <-Corpus(VectorSource(data3$cleaned_content))
dtm3 <-TermDocumentMatrix(docs3)
m3 <- as.matrix(dtm3)
v3 <- sort(rowSums(m3),decreasing=TRUE)
d3 <- data.frame(word = names(v3),freq=v3)
head(d3, 20)
barplot(d3[1:20,]$freq, las = 2, names.arg = d3[1:20,]$word,
        col ="lightblue", main ="Most frequent in topic 3",
        ylab = "Word frequencies")

#TOPIC2
#Code steps the same as to topic 3
data2<-read.csv("Topic2.csv")
docs2 <-Corpus(VectorSource(data2$cleaned_content))
dtm2 <-TermDocumentMatrix(docs2)
m2 <- as.matrix(dtm2)
v2 <- sort(rowSums(m2),decreasing=TRUE)
d2 <- data.frame(word = names(v2),freq=v2)
head(d2, 20)
barplot(d2[1:20,]$freq, las = 2, names.arg = d2[1:20,]$word,
        col ="lightblue", main ="Most frequent in topic 2",
        ylab = "Word frequencies")

#TOPIC1
#Code steps the same as to topic 2
data1<-read.csv("Topic1.csv")
docs1 <-Corpus(VectorSource(data1$cleaned_content))
dtm2 <-TermDocumentMatrix(docs2)
m1 <- as.matrix(dtm1)
v1 <- sort(rowSums(m1),decreasing=TRUE)
d1 <- data.frame(word = names(v1),freq=v1)
head(d1, 20)
barplot(d1[1:20,]$freq, las = 2, names.arg = d1[1:20,]$word,
        col ="lightblue", main ="Most frequent in topic 1",
        ylab = "Word frequencies")
#TOPIC0
#Code steps the same as to topic 1
data0<-read.csv("Topic0.csv")
docs0 <-Corpus(VectorSource(data0$cleaned_content))
dtm0 <-TermDocumentMatrix(docs0)
m0 <- as.matrix(dtm0)
v0 <- sort(rowSums(m0),decreasing=TRUE)
d0 <- data.frame(word = names(v0),freq=v0)
head(d0, 20)
barplot(d0[1:20,]$freq, las = 2, names.arg = d0[1:20,]$word,
        col ="lightblue", main ="Most frequent in topic 0",
        ylab = "Word frequencies")

