setwd("C:/Users/wilkinso/Box Sync/Carp Removal & Phosphorus Project/Synoptic Sampling/Water Quality Data")

c19 = read.csv("P19_WQ_2019.csv")
c18 = read.csv("P18_WQ_2018.csv")

windows(height=8, width=6)
par(mfrow=c(3,2), omi=c(1,0.1,0.1,0.1), mai=c(0.1,0.5,0.1,0.1))

barplot(c(median(c18[c18$LakeID==19 & c18$Depth=="Epi", "TP_ugL"], na.rm=T),
        median(c19[c19$LakeNumber==19 & c19$Depth=="Epi", "TP_ugL"], na.rm=T),0,
        median(c18[c18$LakeID==36 & c18$Depth=="Epi", "TP_ugL"], na.rm=T),
        median(c19[c19$LakeNumber==36 & c19$Depth=="Epi", "TP_ugL"], na.rm=T),0,
        median(c18[c18$LakeID==90 & c18$Depth=="Epi", "TP_ugL"], na.rm=T),
        median(c19[c19$LakeNumber==90 & c19$Depth=="Epi", "TP_ugL"], na.rm=T),0,
        median(c18[c18$LakeID==105 & c18$Depth=="Epi", "TP_ugL"], na.rm=T),
        median(c19[c19$LakeNumber==105 & c19$Depth=="Epi", "TP_ugL"], na.rm=T),0,
        median(c18[c18$LakeID==113 & c18$Depth=="Epi", "TP_ugL"], na.rm=T),
        median(c19[c19$LakeNumber==113 & c19$Depth=="Epi", "TP_ugL"], na.rm=T),0,
        median(c18[c18$LakeID==406 & c18$Depth=="Epi", "TP_ugL"], na.rm=T),
        median(c19[c19$LakeNumber==406 & c19$Depth=="Epi", "TP_ugL"], na.rm=T)),
        col=c("cornflowerblue", 'darkseagreen1', "white"), ylim=c(0,225), las=2, cex.axis=1.25); box()
text(2,210, "TP", cex=1.5, font=2)

barplot(c(median(c18[c18$LakeID==19 & c18$Depth=="Epi", "SRP_ugL"], na.rm=T),
          median(c19[c19$LakeNumber==19 & c19$Depth=="Epi", "SRP_ugL"], na.rm=T),0,
          median(c18[c18$LakeID==36 & c18$Depth=="Epi", "SRP_ugL"], na.rm=T),
          median(c19[c19$LakeNumber==36 & c19$Depth=="Epi", "SRP_ugL"], na.rm=T),0,
          median(c18[c18$LakeID==90 & c18$Depth=="Epi", "SRP_ugL"], na.rm=T),
          median(c19[c19$LakeNumber==90 & c19$Depth=="Epi", "SRP_ugL"], na.rm=T),0,
          median(c18[c18$LakeID==105 & c18$Depth=="Epi", "SRP_ugL"], na.rm=T),
          median(c19[c19$LakeNumber==105 & c19$Depth=="Epi", "SRP_ugL"], na.rm=T),0,
          median(c18[c18$LakeID==113 & c18$Depth=="Epi", "SRP_ugL"], na.rm=T),
          median(c19[c19$LakeNumber==113 & c19$Depth=="Epi", "SRP_ugL"], na.rm=T),0,
          median(c18[c18$LakeID==406 & c18$Depth=="Epi", "SRP_ugL"], na.rm=T),
          median(c19[c19$LakeNumber==406 & c19$Depth=="Epi", "SRP_ugL"], na.rm=T)),
        col=c("cornflowerblue", 'darkseagreen1', "white"), ylim=c(0,80), las=2, cex.axis=1.25); box() 
text(2,75, "SRP", cex=1.5, font=2)


barplot(c(median(c18[c18$LakeID==19 & c18$Depth=="Epi", "TSS_mgL"], na.rm=T),
          median(c19[c19$LakeNumber==19 & c19$Depth=="Epi", "TSS_mgL"], na.rm=T),0,
          median(c18[c18$LakeID==36 & c18$Depth=="Epi", "TSS_mgL"], na.rm=T),
          median(c19[c19$LakeNumber==36 & c19$Depth=="Epi", "TSS_mgL"], na.rm=T),0,
          median(c18[c18$LakeID==90 & c18$Depth=="Epi", "TSS_mgL"], na.rm=T),
          median(c19[c19$LakeNumber==90 & c19$Depth=="Epi", "TSS_mgL"], na.rm=T),0,
          median(c18[c18$LakeID==105 & c18$Depth=="Epi", "TSS_mgL"], na.rm=T),
          median(c19[c19$LakeNumber==105 & c19$Depth=="Epi", "TSS_mgL"], na.rm=T),0,
          median(c18[c18$LakeID==113 & c18$Depth=="Epi", "TSS_mgL"], na.rm=T),
          median(c19[c19$LakeNumber==113 & c19$Depth=="Epi", "TSS_mgL"], na.rm=T),0,
          median(c18[c18$LakeID==406 & c18$Depth=="Epi", "TSS_mgL"], na.rm=T),
          median(c19[c19$LakeNumber==406 & c19$Depth=="Epi", "TSS_mgL"], na.rm=T)),
        col=c("cornflowerblue", 'darkseagreen1', "white"), ylim=c(0,80), las=2, cex.axis=1.25); box() 
text(2,73, "TSS", cex=1.5, font=2)


barplot(c(median(c18[c18$LakeID==19 & c18$Depth=="Epi", "ISS_mgL"], na.rm=T),
          median(c19[c19$LakeNumber==19 & c19$Depth=="Epi", "ISS_mgL"], na.rm=T),0,
          median(c18[c18$LakeID==36 & c18$Depth=="Epi", "ISS_mgL"], na.rm=T),
          median(c19[c19$LakeNumber==36 & c19$Depth=="Epi", "ISS_mgL"], na.rm=T),0,
          median(c18[c18$LakeID==90 & c18$Depth=="Epi", "ISS_mgL"], na.rm=T),
          median(c19[c19$LakeNumber==90 & c19$Depth=="Epi", "ISS_mgL"], na.rm=T),0,
          median(c18[c18$LakeID==105 & c18$Depth=="Epi", "ISS_mgL"], na.rm=T),
          median(c19[c19$LakeNumber==105 & c19$Depth=="Epi", "ISS_mgL"], na.rm=T),0,
          median(c18[c18$LakeID==113 & c18$Depth=="Epi", "ISS_mgL"], na.rm=T),
          median(c19[c19$LakeNumber==113 & c19$Depth=="Epi", "ISS_mgL"], na.rm=T),0,
          median(c18[c18$LakeID==406 & c18$Depth=="Epi", "ISS_mgL"], na.rm=T),
          median(c19[c19$LakeNumber==406 & c19$Depth=="Epi", "ISS_mgL"], na.rm=T)),
        col=c("cornflowerblue", 'darkseagreen1', "white"), ylim=c(0,35), las=2, cex.axis=1.25); box() 
text(2,32, "ISS", cex=1.5, font=2)

        

barplot(c(median(c18[c18$LakeID==19 & c18$Depth=="Epi", "Chla_ugL"], na.rm=T),
          median(c19[c19$LakeNumber==19 & c19$Depth=="Epi", "Chl_ugL"], na.rm=T),0,
          median(c18[c18$LakeID==36 & c18$Depth=="Epi", "Chla_ugL"], na.rm=T),
          median(c19[c19$LakeNumber==36 & c19$Depth=="Epi", "Chl_ugL"], na.rm=T),0,
          median(c18[c18$LakeID==90 & c18$Depth=="Epi", "Chla_ugL"], na.rm=T),
          median(c19[c19$LakeNumber==90 & c19$Depth=="Epi", "Chl_ugL"], na.rm=T),0,
          median(c18[c18$LakeID==105 & c18$Depth=="Epi", "Chla_ugL"], na.rm=T),
          median(c19[c19$LakeNumber==105 & c19$Depth=="Epi", "Chl_ugL"], na.rm=T),0,
          median(c18[c18$LakeID==113 & c18$Depth=="Epi", "Chla_ugL"], na.rm=T),
          median(c19[c19$LakeNumber==113 & c19$Depth=="Epi", "Chl_ugL"], na.rm=T),0,
          median(c18[c18$LakeID==406 & c18$Depth=="Epi", "Chla_ugL"], na.rm=T),
          median(c19[c19$LakeNumber==406 & c19$Depth=="Epi", "Chl_ugL"], na.rm=T)),
        col=c("cornflowerblue", 'darkseagreen1', "white"), ylim=c(0,70),
        names=c("Center", "", "",
                "Five Island", "", "",
                "North Twin", "", "",
                "Silver", "", "",
                "Storm", "", "",
                "South Twin", ""), las=2, cex.axis=1.25, cex.names =1.5); box() 
text(2,63, "CHL", cex=1.5, font=2)


barplot(c(median(c18[c18$LakeID==19 & c18$Depth=="Epi", "Secchi_m"], na.rm=T),
          median(c19[c19$LakeNumber==19 & c19$Depth=="Epi", "Secchi_m"], na.rm=T),0,
          median(c18[c18$LakeID==36 & c18$Depth=="Epi", "Secchi_m"], na.rm=T),
          median(c19[c19$LakeNumber==36 & c19$Depth=="Epi", "Secchi_m"], na.rm=T),0,
          median(c18[c18$LakeID==90 & c18$Depth=="Epi", "Secchi_m"], na.rm=T),
          median(c19[c19$LakeNumber==90 & c19$Depth=="Epi", "Secchi_m"], na.rm=T),0,
          median(c18[c18$LakeID==105 & c18$Depth=="Epi", "Secchi_m"], na.rm=T),
          median(c19[c19$LakeNumber==105 & c19$Depth=="Epi", "Secchi_m"], na.rm=T),0,
          median(c18[c18$LakeID==113 & c18$Depth=="Epi", "Secchi_m"], na.rm=T),
          median(c19[c19$LakeNumber==113 & c19$Depth=="Epi", "Secchi_m"], na.rm=T),0,
          median(c18[c18$LakeID==406 & c18$Depth=="Epi", "Secchi_m"], na.rm=T),
          median(c19[c19$LakeNumber==406 & c19$Depth=="Epi", "Secchi_m"], na.rm=T)),
        col=c("cornflowerblue", 'darkseagreen1', "white"), ylim=c(0,1.5),
        names=c("Center", "", "",
                "Five Island", "", "",
                "North Twin", "", "",
                "Silver", "", "",
                "Storm", "", "",
                "South Twin", ""), las=2, cex.axis=1.25, cex.names =1.5); box() 
text(2.5,1.35, "Secchi", cex=1.5, font=2)
