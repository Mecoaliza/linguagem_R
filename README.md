# linguagem_R
Algumas funções básicas do R
# Os comentários pode ser feitos por #
# Thu Dec 22 21:38:39 2022 ------------------------------
##Atribuição de símbolo ( <- )
obj_10 <-  10
obj_10
val1 <- 10
val2 <- 5
#Todos os objetos chamados ficam salvos na aba Environment, SÓ ENQUANTO ESTÁ 
#ABERTO, PODEMOS EXPORTAR PARA DEIXAR SALVO#

#Funções - argumentos como valores
sum(10,5)

#Funções - argumentos como objetos#
sum(val1,val2)

#Argumentos como parâmetros - Repetição sequencial#
rep(x = 1:5, time = 10)

#Repetição cada um dos elementos#
rep(x = 1:5, each = 10)

#________________________________________________________________#

#Verificar pacotes carregados
search()

#Verificar pacotes instalados
library()

#Instalar pacotes
install.packages("vegan")
#Desinstalar um pacote
remove.packages()

#Carregando pacotes, é necessário todas as vezes que abrir uma nova sessão no R
library(vegan)

#Para instalar pacote do GitHub
install.packages("devtools")
library(devtools)
devtools::install_github("paternogbc/ecodados")

# Carregar pacote do GitHub
library("ecodados")
packageDescription("vegan")

#Ajuda da função
help("aov")
?aov
library(help = "vegan")
#_________________________________________________________________________#

#Listar todos os objetos atribuidos
ls()
## Remover um objeto
rm(val1)
## Remover todos os objetos criados
rm(list = ls())
#Para salvar todos os objetos e depois carregar quando voltar
#Session -> Save Workspace -> As...
#Session -> Load Workspace 
