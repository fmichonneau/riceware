
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

## create the wordlist (Italian)
library(magrittr)
wordlist_it <- scan(file = "inst/extdata/wordlist_it.txt", what = "character", quote = "",
                    sep = " ") %>% .[nzchar(.)]
wordlist_it <- data.frame(token = wordlist_it[seq(1, length(wordlist_it), by = 2)],
                          word  = wordlist_it[seq(2, length(wordlist_it), by = 2)],
                          row.names = NULL)
devtools::use_data(wordlist_it, overwrite = TRUE)

## create the wordlist (Japanese)
wordlist_jp <- read.table(file = "inst/extdata/wordlist_jp.txt", quote = "", stringsAsFactors = FALSE,
                          colClasses = "character")
names(wordlist_jp) <- c("token", "word")
devtools::use_data(wordlist_jp, overwrite = TRUE)
