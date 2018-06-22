library(xml2)
library(rvest)
library(magrittr)
#找到1~3頁全部的標題
result=c()
for(i in 1:3){
  sc.url=paste('https://forum.gamer.com.tw/B.php?page=',i,'&bsn=3037',sep='')
  title=read_html(sc.url) %>% html_nodes(".b-list__main") %>% html_text()
  title=gsub("\n", "", title)
  result[[i]]=title
}
unlist(result)
#找到1~10頁有關蟲族的標題
for(i in 1:10){
  sc.url=paste('https://forum.gamer.com.tw/B.php?page=',i,'&bsn=3037',sep='')
  title=read_html(sc.url) %>% html_nodes(".b-list__main") %>% html_text()
  title=gsub("\n", "", title)
  title=title[grepl("蟲族",title)==TRUE ]
  result[[i]]=title
}
unlist(result)