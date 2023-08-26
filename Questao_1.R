# carregar o pacote sampling, 
#fazer a leitura da base dados e deixar claro o tamanho da população N e do tamanho da amostra n
install.packages("sampling")
library(sampling)
data(MU284)
N=nrow(MU284)
n=50

# alocação proporcional do tamanho de amostra n = 50

table(MU284$REG)
50*prop.table(table(MU284$REG))

# selecionar nossa amostra estratificada

set.seed(3)
selec = strata(MU284, stratanames = "REG", size = c(5, 9, 6, 7, 10, 8, 3, 6), method = "srswor")
head(selec,10)
amostra = getdata(MU284, selec)

# indicar parâmetro fpc com os totais populacionais para cada linha da base da amostra:

fpc=rep(c(25,48,32,38,56,41,15,29),c(5,9,6,7,10,8,3,6))

# especificar nosso plano amostra
install.packages("survey")
library(survey)
plano_est = svydesign(id = ~1, strata = ~Stratum, probs = ~selec$Prob, data = amostra,fpc=~fpc)

# estimar a média e seu erro padrão

svymean(~RMT85, plano_est)