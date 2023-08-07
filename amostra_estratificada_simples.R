# amostra estratificada (AE) simples sem reposição de tamanho 80 

#Cria uma tabela de frequência dos valores na coluna "REG" do dataframe "MU284". 
#Isso conta quantas vezes cada valor aparece na coluna "REG" e organiza os resultados em uma tabela.

library(sampling)
data(MU284)
table(MU284$REG)  

# Para encontrar o fator de ponderação dos estratos, ou seja, proporção de cada região em relação ao total

prop.table(table(MU284$REG))

# Amostra definida de tamanho n é distribuída proporcionalmente ao tamanho dos estratos. 
80*prop.table(table(MU284$REG))


# Strata -> argumento para dizer qual a variável utilizada para fazer a estratificação.
set.seed(3)
selec = strata(MU284, stratanames = "REG", size = c(8,14,10,11,16,12,5,9), method = "srswor")
selec
head(selec,10)