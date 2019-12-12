setwd("C:/Users/wilkinso/Box Sync/Carp Removal & Phosphorus Project/Synoptic Sampling/Water Quality Data")

c19 = read.csv("P19_WQ_2019.csv")
c18 = read.csv("P18_WQ_2018.csv")


windows(height=8, width=6)
par(mfrow=c(4,2), omi=c(0.5,0.5,0.75,0.1), mai=c(0.3,0.4,0,0))

#Total P
plot(c18[c18$LakeID==105 & c18$Depth=="Epi", "DOY"], c18[c18$LakeID==105 & c18$Depth=="Epi", "TP_ugL"], 
     type="o", pch=19, col="mediumpurple4", ylim=c(0,440), cex=2, lwd=2, xaxt="n")
mtext(side=3, line=2.5, "                              Silver Lake", cex=1.5)
mtext(side=3, line=0.5, "2018", cex=1.25); mtext(side=2, line=3, expression(Phosphorus~"("*mu*g~L^-1*")"))
legend("topleft", legend=c("Total P", "Soluble P"), pch=c(19,15), pt.cex=2, col=c("mediumpurple4", "mediumpurple2"), cex=1.5)
points(c18[c18$LakeID==105 & c18$Depth=="Epi", "DOY"], c18[c18$LakeID==105 & c18$Depth=="Epi", "SRP_ugL"], 
       type="o", pch=15, col="mediumpurple2", cex=2, lwd=2)
plot(c19[c19$LakeNumber==105 & c19$Depth=="Epi", "DOY"], c19[c19$LakeNumber==105 & c19$Depth=="Epi", "TP_ugL"], 
     type="o", pch=19, col="mediumpurple4", ylim=c(0,440), cex=2, lwd=2, xaxt="n")
mtext(side=3, line=0.5, "2019", cex=1.25)
points(c19[c19$LakeNumber==105 & c19$Depth=="Epi", "DOY"], c19[c19$LakeNumber==105 & c19$Depth=="Epi", "SRP_ugL"], 
       type="o", pch=15, col="mediumpurple2", cex=2, lwd=2)


#Total N and Nitrate
plot(c18[c18$LakeID==105 & c18$Depth=="Epi", "DOY"], c18[c18$LakeID==105 & c18$Depth=="Epi", "TN_mgL"], 
     type="o", pch=19, col="dodgerblue4", ylim=c(0,15), cex=2, lwd=2, xaxt="n")
mtext(side=2, line=3, expression(Nitrogen~"("*mg~L^-1*")"))
legend("topright", legend=c("Total N", "Nitrate"), pch=c(19,15), pt.cex=2, col=c("dodgerblue4", "dodgerblue1"), cex=1.5)
points(c18[c18$LakeID==105 & c18$Depth=="Epi", "DOY"], c18[c18$LakeID==105 & c18$Depth=="Epi", "Nitrate_mgL"], 
       type="o", pch=15, col="dodgerblue1", cex=2, lwd=2)
plot(c19[c19$LakeNumber==105 & c19$Depth=="Epi", "DOY"], c19[c19$LakeNumber==105 & c19$Depth=="Epi", "TN_mgL"], 
     type="o", pch=19, col="dodgerblue4", ylim=c(0,15), cex=2, lwd=2, xaxt="n")
points(c19[c19$LakeNumber==105 & c19$Depth=="Epi", "DOY"], c19[c19$LakeNumber==105 & c19$Depth=="Epi", "Nitrate_mgL"], 
       type="o", pch=15, col="dodgerblue1", cex=2, lwd=2)


#Pigments
plot(c18[c18$LakeID==105 & c18$Depth=="Epi", "DOY"], c18[c18$LakeID==105 & c18$Depth=="Epi", "Chla_ugL"], 
     type="o", pch=19, col="darkseagreen2", ylim=c(0,210), cex=2, lwd=2, xaxt="n")
mtext(side=2, line=3, expression(Pigments~"("*mu*g~L^-1*")"))
legend("topleft", legend=c("Chl", "Phyco"), pch=c(19,15), pt.cex=2, col=c("darkseagreen2", "seagreen4"), cex=1.5)
points(c18[c18$LakeID==105 & c18$Depth=="Epi", "DOY"], c18[c18$LakeID==105 & c18$Depth=="Epi", "Phyco_ugL"], 
       type="o", pch=15, col="seagreen4", cex=2, lwd=2)
plot(c19[c19$LakeNumber==105 & c19$Depth=="Epi", "DOY"], c19[c19$LakeNumber==105 & c19$Depth=="Epi", "Chl_ugL"], 
     type="o", pch=19, col="darkseagreen2", ylim=c(0,210), cex=2, lwd=2, xaxt="n")
points(c19[c19$LakeNumber==105 & c19$Depth=="Epi", "DOY"], c19[c19$LakeNumber==105 & c19$Depth=="Epi", "Phyco_ugL"], 
       type="o", pch=15, col="seagreen4", cex=2, lwd=2)


#TSS and ISS
plot(c18[c18$LakeID==105 & c18$Depth=="Epi", "DOY"], c18[c18$LakeID==105 & c18$Depth=="Epi", "TSS_mgL"], 
     type="o", pch=19, col="gray30", ylim=c(0,80), cex=2, lwd=2)
mtext(side=2, line=3, expression(Particles~"("*mg~L^-1*")"))
legend("topleft", legend=c("Total", "Inorg"), pch=c(19,15), pt.cex=2, col=c("gray30", "gray70"), cex=1.5)
points(c18[c18$LakeID==105 & c18$Depth=="Epi", "DOY"], c18[c18$LakeID==105 & c18$Depth=="Epi", "ISS_mgL"], 
       type="o", pch=15, col="gray70", cex=2, lwd=2)
plot(c19[c19$LakeNumber==105 & c19$Depth=="Epi", "DOY"], c19[c19$LakeNumber==105 & c19$Depth=="Epi", "TSS_mgL"], 
     type="o", pch=19, col="gray30", ylim=c(0,80), cex=2, lwd=2)
points(c19[c19$LakeNumber==105 & c19$Depth=="Epi", "DOY"], c19[c19$LakeNumber==105 & c19$Depth=="Epi", "ISS_mgL"], 
       type="o", pch=15, col="gray70", cex=2, lwd=2)



#HYPOLIMNION
windows(height=6, width=6)
par(mfrow=c(2,2), omi=c(0.5,0.5,0.75,0.1), mai=c(0.3,0.4,0,0))
#Total P
plot(c18[c18$LakeID==105 & c18$Depth=="Hypo", "DOY"], c18[c18$LakeID==105 & c18$Depth=="Hypo", "TP_ugL"], 
     type="o", pch=19, col="mediumpurple4", ylim=c(0,350), cex=2, lwd=2, xaxt="n")
mtext(side=3, line=2.5, "                                   Hypolimnion - Silver Lake", cex=1.5)
mtext(side=3, line=0.5, "2018", cex=1.25); mtext(side=2, line=3, expression(Phosphorus~"("*mu*g~L^-1*")"))
points(c18[c18$LakeID==105 & c18$Depth=="Hypo", "DOY"], c18[c18$LakeID==105 & c18$Depth=="Hypo", "SRP_ugL"], 
       type="o", pch=15, col="mediumpurple2", cex=2, lwd=2)
plot(c19[c19$LakeNumber==105 & c19$Depth=="Hypo", "DOY"], c19[c19$LakeNumber==105 & c19$Depth=="Hypo", "TP_ugL"], 
     type="o", pch=19, col="mediumpurple4", ylim=c(0,350), cex=2, lwd=2, xaxt="n")
mtext(side=3, line=0.5, "2019", cex=1.25)
points(c19[c19$LakeNumber==105 & c19$Depth=="Epi", "DOY"], c19[c19$LakeNumber==105 & c19$Depth=="Epi", "SRP_ugL"], 
       type="o", pch=15, col="mediumpurple2", cex=2, lwd=2)
legend("topright", legend=c("Total P", "Soluble P"), pch=c(19,15), pt.cex=2, col=c("mediumpurple4", "mediumpurple2"), cex=1.5)


#TSS and ISS
plot(c18[c18$LakeID==105 & c18$Depth=="Hypo", "DOY"], c18[c18$LakeID==105 & c18$Depth=="Hypo", "TSS_mgL"], 
     type="o", pch=19, col="gray30", ylim=c(0,110), cex=2, lwd=2)
mtext(side=2, line=3, expression(Particles~"("*mg~L^-1*")"))
points(c18[c18$LakeID==105 & c18$Depth=="Hypo", "DOY"], c18[c18$LakeID==105 & c18$Depth=="Hypo", "ISS_mgL"], 
       type="o", pch=15, col="gray70", cex=2, lwd=2)
legend("topleft", legend=c("Total", "Inorg"), pch=c(19,15), pt.cex=2, col=c("gray30", "gray70"), cex=1.5)
plot(c19[c19$LakeNumber==105 & c19$Depth=="Hypo", "DOY"], c19[c19$LakeNumber==105 & c19$Depth=="Hypo", "TSS_mgL"], 
     type="o", pch=19, col="gray30", ylim=c(0,110), cex=2, lwd=2)
points(c19[c19$LakeNumber==105 & c19$Depth=="Hypo", "DOY"], c19[c19$LakeNumber==105 & c19$Depth=="Hypo", "ISS_mgL"], 
       type="o", pch=15, col="gray70", cex=2, lwd=2)


# SECCHI DATA
windows(height=3.5, width=6)
par(mfrow=c(1,2), omi=c(0.5,0.5,0.75,0.1), mai=c(0.3,0.4,0,0))
plot(c18[c18$LakeID==105 & c18$Depth=="Epi", "DOY"], c18[c18$LakeID==105 & c18$Depth=="Epi", "Secchi_m"], 
     type="o", pch=19, col="black", ylim=c(0,2), cex=2, lwd=2, xaxt="n")
mtext(side=3, line=2.5, "                             Silver Lake", cex=1.5)
mtext(side=3, line=0.5, "2018", cex=1.25); mtext(side=2, line=3, expression(Secchi~Depth~"("*m*")"))

plot(c19[c19$LakeNumber==105 & c19$Depth=="Epi", "DOY"], c19[c19$LakeNumber==105 & c19$Depth=="Epi", "Secchi_m"], 
     type="o", pch=19, col="black", ylim=c(0,2), cex=2, lwd=2, xaxt="n")
mtext(side=3, line=0.5, "2019", cex=1.25)

