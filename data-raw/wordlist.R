
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
