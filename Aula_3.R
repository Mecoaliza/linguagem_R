#Manipulando objetos Multidimensionais 

#INDEXAÇÃO om MATRIZ
tabela3
tabela3[3, ] #ver linha 3
tabela3[, 2] #ver coluna 2
tabela3[2, 2] #ver linha 2 da coluna 2

#Criando Vetores (data frames)
sp <-  paste("sp", 1:10, sep = "")
abu <-  1:10
flo <- factor(rep(c("campo", "floresta"), each = 5))

df <- data.frame(sp,abu,flo)
df

# Vai trazer os elementos do data frame separados 
df[,3]

# Vai trazer o nome das colunas
df["flo"]
# Somente os valores da coluna (tem que colocar em duplo conchetes)
df[["flo"]]

# Usar o simbolo $ apenas para DATA FRAMES
df$sp
length(df$sp)

#Converter colunas 

df$abu <- as.character(df$abu)
mode[df$abu]

# Selecionar linhas de um data frame ou matriz
df[df$abu > 5, ]
df[df$flo == "campo", ]

str(df)

# PÁGINA 85

#IMPORTAR TABELA 

df_flora <- read.csv("linguagem_R/dim_localidades.csv")
df_flora

intror_anfibios_locais <- ecodados::intror_anfibios_locais
head(intror_anfibios_locais)
tail(intror_anfibios_locais)
nrow(intror_anfibios_locais)
ncol(intror_anfibios_locais)
dim(intror_anfibios_locais)
row.names(intror_anfibios_locais)
colnames(intror_anfibios_locais)
str(intror_anfibios_locais)
summary(intror_anfibios_locais)
any(is.na(intror_anfibios_locais))
which(is.na(intror_anfibios_locais))
intror_anfibios_locais_na <- na.omit(intror_anfibios_locais)

