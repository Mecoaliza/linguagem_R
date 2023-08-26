# carregar o pacote sampling, 
#fazer a leitura da base dados e deixar claro o tamanho da população N e do tamanho da amostra n

library(sampling)
data("belgianmunicipalities")
View(belgianmunicipalities)
N=nrow(belgianmunicipalities)
n=300

# alocação proporcional do tamanho de amostra n = 50

table(belgianmunicipalities$Province)
300*prop.table(table(belgianmunicipalities$Province))

# selecionar nossa amostra estratificada

set.seed(5)
selec = strata(belgianmunicipalities, stratanames = "Province", size = c(36,57,33,34,36,43,23,23,20), method = "srswor")
head(selec,10)
amostra = getdata(belgianmunicipalities, selec)

# indicar parâmetro fpc com os totais populacionais para cada linha da base da amostra:

fpc=rep(c(70,111,64,65,69,84,44,44,38),c(36,57,33,34,36,43,23,23,20))

# especificar nosso plano amostra

library(survey)
plano_est = svydesign(id = ~1, strata = ~Province, probs = ~selec$Prob, data = amostra,fpc=~fpc)

# estimar a média e seu erro padrão

svyby(~averageincome, by = ~Province, design = plano_est, FUN = svymean) #Média

#  Como queremos somente o estrato 1, obtemos um erro de 282 973. 
#Os resultados sem o fpc são dados por:

plano_est2 = svydesign(id = ~1, strata = ~Province, probs = ~selec$Prob, data = amostra)
svyby(~averageincome, by = ~Province, design = plano_est2, FUN = svymean)