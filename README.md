

[![Travis-CI Build Status](https://travis-ci.org/fmichonneau/riceware.png?branch=master)](https://travis-ci.org/fmichonneau/riceware)
[![Coverage Status](https://coveralls.io/repos/fmichonneau/riceware/badge.svg)](https://coveralls.io/r/fmichonneau/riceware)
[![](http://www.r-pkg.org/badges/version/riceware)](http://www.r-pkg.org/pkg/riceware)
[![CRAN RStudio mirror downloads](http://cranlogs.r-pkg.org/badges/riceware)](http://www.r-pkg.org/pkg/riceware)


# riceware :rice:

Diceware is a method to generate robust passphrases. The idea is simple, you
roll a 6-faced dice 5 times. Each time you record the number it gives you, and
you obtain a string of numbers that looks like
`61353`. [diceware.com](http://diceware.com) provides a list of 7776 words that
corresponds to all the possible results of these 5 rolls. If you pick up a
passphrase made up of 7 words (i.e., you roll the dice 7 x 5 = 35 times), there
are 7776^7 = 1.719e+27 possibilities. At 1 trillion guesses a second, it would
take an
[average of 27 million years](https://firstlook.org/theintercept/2015/03/26/passphrases-can-memorize-attackers-cant-guess/)
to find the correct passphrase. Not bad.

This package provides a way to generate this passphrase automatically. If you
need a quick passphrase you can just type `generate_passphrase()` to generate a
7-word passphrase.

By default, the package uses the `sample` function which relies on pseudorandom
numbers. You can use true random numbers by using:




```r
generate_passphrase(tokens = generate_token(n_words = 7, method = "random"))
## or with pipes:
## 7 %>% generate_token(method = "random") %>% generate_passphrase
#> Your passphrase is: Indies Dna Check C Foxy Aid Gimpy
#> [1] "IndiesDnaCheckCFoxyAidGimpy"
```

With this approach, the tokens are generated from truly random numbers using the
[random.org](http://www.random.org) website (using the
[random package](http://cran.r-project.org/package=random), by
[Dirk Eddelbuettel](http://dirk.eddelbuettel.com/)). These numbers are converted
from atmospheric noise and are truly random. However, if you are really concerned
about security, this is not perfect as the numbers are transfered without any
form of encryption on the network. Rolling a physical dice is a more robust
approach. If you rolled your dice 15 times to generate 3 words, you generate
your passphrase like this:


```r
generate_passphrase(tokens = c("52126", "52215", "52222"))
#> Your passphrase is: Ripley Rocky Rodeo
#> [1] "RipleyRockyRodeo"
```

## Other languages

In addition of English, riceware provides wordlists in:

- :fr: French
- :jp: Japanese
- :es: Spanish
- :it: Italian
- :de: German
- Swedish


```r
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

## installation


```r
install.packages("devtools")
devtools::install_github("fmichonneau/riceware")
library(riceware)
```
