<!-- README.md is generated from README.Rmd. Please edit that file -->



[![Travis-CI Build Status](https://travis-ci.org/fmichonneau/riceware.png?branch=master)](https://travis-ci.org/fmichonneau/riceware)

riceware
========

Diceware is a method to generate robust passphrases. The idea is simple, you roll a 6-faced dice 5 times. Each time you record the number it gives you, and you obtain a string of numbers that look something like `61353`. [diceware.com](http://diceware.com) provides a list of 7776 words that corresponds to all the possible results of these 5 rolls. If you pick up a passphrase made up of 7 words (i.e., you roll the dice 7 x 5 = 35 times), there are 7776\^7 = 1.719e+27 possibilities. At 1 trillion guesses a second, it would take an [average of 27 million years](https://firstlook.org/theintercept/2015/03/26/passphrases-can-memorize-attackers-cant-guess/) to find the correct passphrase. Not bad.

This package provides a way to generate this passphrase automatically. If you need a quick passphrase you can just type `generate_passphrase()` to generate a 7-word passphrase.

However, this is not recommended and rolling a physical dice is a more robust approach. If you rolled your dice 15 times to generate 3 words, you could also get the passphrase like this:

``` {.r}
generate_passphrase(tokens = c("52126", "52215", "52222"))
#> Your passphrase is: Ripley Rocky Rodeo
#> [1] "RipleyRockyRodeo"
```

Other languages
---------------

In addition of English, riceware provides wordlists in:

-   :fr: French
-   :jp: Japanese
-   :es: Spanish
-   :it: Italian
-   :de: German
-   Swedish

``` {.r}
generate_passphrase(tokens = c("34454"), wordlist = wordlist_de,
                    title_case = TRUE, verbose = FALSE)
#> [1] "Katze"
generate_passphrase(tokens = c("35622"), wordlist = wordlist_es,
                    title_case = TRUE, verbose = FALSE)
#> [1] "Gato"
generate_passphrase(tokens = c("21631"), wordlist = wordlist_fr,
                    title_case = TRUE, verbose = FALSE)
#> [1] "Chaton"
generate_passphrase(tokens = c("32141"), wordlist = wordlist_it,
                    title_case = TRUE, verbose = FALSE)
#> [1] "Gelato"
generate_passphrase(tokens = c("44565"), wordlist = wordlist_jp,
                    title_case = TRUE, verbose = FALSE)
#> [1] "Neko"
generate_passphrase(tokens = c("33343"), wordlist = wordlist_sv,
                    title_case = TRUE, verbose = FALSE)
#> [1] "Katt"
```

installation
------------

``` {.r}
install.packages("devtools")
devtools::install_github("fmichonneau/riceware")
```
