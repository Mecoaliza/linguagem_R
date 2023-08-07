install.packages("tidyverse")
library(tidyverse)
# Listar todos os pacotes do tidyverse
tidyverse::tidyverse_packages()

## Funções seguidas de seus respectivos pacotes
readr::read_csv()
readr::read_tsv()
tibble::as_tibble()
dplyr::left_join()
dplyr::group_by()

# Importando locais ou pelo pacote ecodados

tidy_anfibios_locais <- readr::read_csv(
  here::here("dados", "tabelas", "ATLANTIC_AMPHIBIANS_sites.csv"),
  locale = readr::locale(encoding = "latin1")
)

tidy_anfibios_locais <- ecodados::tidy_anfibios_locais
head(tidy_anfibios_locais)
tidy_anfibios_locais

# Espiar dados
tibble::glimpse(tidy_anfibios_locais[,1:10])

# O pipe pode expressar uma sequência de multiplas operações
# Exemplo sem o pipe
sqrt(sum(1:100))
# Exemplo com o pipe
1:100 %>%
  sum() %>%
  sqrt()

