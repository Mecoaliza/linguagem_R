library(sampling)
data(belgianmunicipalities)
N=nrow(belgianmunicipalities)
N
table(belgianmunicipalities$Province)
# 284/50= 5,68. Amostra de 80/5,68

# 
set.seed(10)
ACS=cluster(belgianmunicipalities,clustername=c("Province"),size=3,method=c("srswor"))
ACSs=getdata(belgianmunicipalities,ACS)

fpc2=rep(9,dim(ACSs)[1])


library(survey)
Plano_ACS=svydesign(id=~Province,data=ACSs,probs=~ACS$Prob,fpc=~fpc2)

svymean(~averageincome,Plano_ACS)
