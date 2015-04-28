
## create the wordlist

wordlist_en <- read.csv(file = "inst/extdata/wordlist_en.csv", header = FALSE, stringsAsFactors = FALSE)
names(wordlist_en) <- c("token", "word")
devtools::use_data(wordlist_en, overwrite = TRUE)
