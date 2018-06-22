library(plotly)
library(RColorBrewer)
Data=data.frame(
names=factor(c('AN','BeBe','Breeze','CorGi','GodKwai','LBB','LilV','Rabi2','RD',
                 'BeBe','Breaker','Breeze','CorGi','Dee','NL','Raison','RD',
                 'AN','BeBe','Betty','Breeze','Dee','GodKwai','LBB','Unified','Wako',
                 'AN','BeBe','Betty','Breeze','Dee','Enzz','GodKwai','LBB','LilV','Ran','Unified')
             ,levels=c('AN','BeBe','Betty','Breaker','Breeze','CorGi','Dee','Enzz','GodKwai','LBB','LilV','NL','Rabi2','Ran','Raison','RD','Unified','Wako')),
KDA=factor(c(5.8,6.8,2.9,2.5,4.8,3.1,4.3,1.1,6.9,
               8.3,1.5,2.2,3.7,3.8,7.8,3.7,13.5,
               6.5,5.6,8.8,2.5,2.8,3.9,3.3,4.3,2.1,
               3.4,5,7.3,3.7,3.4,1.5,2.9,5,5.9,1.5,3.8)),
KP=factor(c(0.6810,0.7710,0.7550,0.7650,0.7290,0.6780,0.8950,0.6400,0.8140,
              0.7650,0.6000,0.6970,0.7550,0.8050,0.7590,0.7380,0.7110,
              0.6530,0.6880,0.6330,0.6820,0.6500,0.6590,0.7110,0.6610,0.6620,
              0.5630,0.6340,0.7010,0.6180,0.6820,0.5680,0.7220,0.5880,0.6940,0.4620,0.6950)),
mpm=factor(c(8.2,8.5,8.6,8.5,8.4,8.0,9.5,6.5,8.6,
               8.8,8.8,8.6,8.9,8.8,9.2,9.2,9.2,
               9.7,9.2,9.5,8.7,8.6,8.1,8.3,8.8,9.1,
               9.6,9.4,10.4,10,8.9,8.4,8.4,8.0,9.7,8.5,9.5)),
Pt=factor(c(930,994,144,776,994,995,73,796,110,
            1041,32,977,1055,1040,1009,1056,74,
            1061,1181,1036,1130,1161,1075,790,1152,976,
            964,1114,956,1209,1184,413,669,67,1181,52,1232)),
time=factor(c('2016spring','2016spring','2016spring','2016spring','2016spring','2016spring','2016spring','2016spring','2016spring',
              '2016summer','2016summer','2016summer','2016summer','2016summer','2016summer','2016summer','2016summer',
              '2017spring','2017spring','2017spring','2017spring','2017spring','2017spring','2017spring','2017spring','2017spring',
              '2017summer','2017summer','2017summer','2017summer','2017summer','2017summer','2017summer','2017summer','2017summer','2017summer','2017summer')
            ,levels=c('2016spring','2016summer','2017spring','2017summer')))

ggplot(data=Data, aes(x=time, y=KDA, group=names, colour=names)) + geom_point() +geom_line()
ggplot(data=Data, aes(x=time, y=mpm, group=names, colour=names)) + geom_point() +geom_line()
ggplot(data=Data, aes(x=time, y=KP, group=names, colour=names)) + geom_point() +geom_line()
ggplot(data=Data, aes(x=names, y=Pt, fill=names)) +  geom_bar(stat="identity", position=position_dodge())
