library(XML)
library(RCurl)
library(httr)
library(xml2)
library(rvest)
library(magrittr)
for(i in 1:10){
sc=paste('https://forum.gamer.com.tw/B.php?page=',i,'&bsn=3037',sep='')
read_html(sc)
title=read_html(sc) 
title=html_nodes(title,".b-list__main")
title=html_text(title)
title=gsub("\n", "", title)
}
title=title[grepl("神族",title)==TRUE ]
title