
## create the wordlist (English)

wordlist_en <- read.csv(file = "inst/extdata/wordlist_en.csv", header = FALSE, stringsAsFactors = FALSE)
names(wordlist_en) <- c("token", "word")
devtools::use_data(wordlist_en, overwrite = TRUE)

## create the wordlist (German)
library(magrittr)
wordlist_de <- scan("inst/extdata/wordlist_de.txt", what = "character", quote = "", sep = "\n") %>%
  strsplit(., "\t") %>% lapply(., function(x) x[1:2]) %>% do.call("rbind", .) %>%
  as.data.frame(., stringsAsFactors = FALSE)
names(wordlist_de) <- c("token", "word")
devtools::use_data(wordlist_de, overwrite = TRUE)

## create the wordlist (Spanish)
library(magrittr)
wordlist_es <- scan(file = "inst/extdata/wordlist_es.txt", what = "character", quote = "",
                    sep = "\n") %>% strsplit(., "\t") %>%
                    lapply(., function(x) x[1:2]) %>% do.call("rbind", .) %>%
                    as.data.frame(., stringsAsFactors = FALSE)
names(wordlist_es) <- c("token", "word")
devtools::use_data(wordlist_es, overwrite = TRUE)

## create the wordlist (French)
library(magrittr)
wordlist_fr <- scan(file = "inst/extdata/wordlist_fr.txt", what = "character", quote = "",
                    sep = "\n") %>% strsplit(., "\t") %>%
                    lapply(., function(x) x[1:2]) %>% do.call("rbind", .) %>%
                    as.data.frame(., stringsAsFactors = FALSE)
names(wordlist_fr) <- c("token", "word")
devtools::use_data(wordlist_fr, overwrite = TRUE)
