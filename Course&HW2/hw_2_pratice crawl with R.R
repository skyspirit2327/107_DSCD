library(xml2)
library(rvest)
library(magrittr)
#找到1~3頁全部的標題
for(i in 1:3){
  sc=paste('https://forum.gamer.com.tw/B.php?page=',i,'&bsn=3037',sep='')
  read_html(sc)
  title=read_html(sc) 
  title=html_nodes(title,".b-list__main")
  title=html_text(title)
  title=gsub("\n", "", title)
  cat(title,sep='\n')
}
#找到1~10頁有關蟲族的標題
for(i in 1:10){
  sc=paste('https://forum.gamer.com.tw/B.php?page=',i,'&bsn=3037',sep='')
  read_html(sc)
  title=read_html(sc) 
  title=html_nodes(title,".b-list__main")
  title=html_text(title)
  title=gsub("\n", "", title)
  title=title[grepl("蟲族",title)==TRUE ]
  cat(title,sep='\n')
}


