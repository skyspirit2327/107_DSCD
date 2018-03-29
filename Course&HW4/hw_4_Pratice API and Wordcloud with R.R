library(httr)
token = ''
urlhead ='https://graph.facebook.com/v2.12/StarCraftZHTW/posts?fields=message&access_token='
url = paste0(urlhead,token)
res = httr::GET(url)
title = httr::content(res)
title=title$data
title=unlist(title)
library(rJava)
library(tm) 
library(Rwordseg) 
library(tmcn) 
library(wordcloud) 
library(colorspace)
Data = Corpus(VectorSource(title))
Data = tm_map(Data ,stripWhitespace)
Data = tm_map(Data ,removePunctuation)
Data = tm_map(Data ,removeNumbers)
Data = tm_map(Data ,function(word){gsub("[A-Za-z0-9]","", word)})
stopward=stopwordsCN()
Data = tm_map(Data,removeWords,stopward)

Wcloud = segmentCN(Data$content, nature = TRUE)
Wcloud = unlist( Wcloud )
noun = Wcloud[ names ( Wcloud ) == "n" ]
tab = table( noun )
Word = as.data.frame( tab[ tab >= 1 ] )

wordcloud(words = Word$noun, freq = Word$Freq,min.freq =2,
  random.order = F, ordered.colors = T, scale=c(3,0.1),
  colors = rainbow_hcl( nrow( Word ) ))
