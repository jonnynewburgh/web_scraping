library(rvest)
library(magrittr)

scraping_wiki <- read_html("https://en.wikipedia.org/wiki/List_of_Major_League_Baseball_career_home_run_leaders")

td <- scraping_wiki %>%
  html_nodes("td") %>%
  html_text() %>%
  strsplit(split = "\n") %>%
  unlist() %>%
  .[. != ""]
length(td)
td <- td[9:787]

tbls <- html_nodes(scraping_wiki, "table")
td <- scraping_wiki %>%
  html_nodes("table") %>%
  .[2:5] %>%
  html_table(fill = TRUE)
td
  
  html_text() %>%
  strsplit(split = "\n") %>%
  unlist() %>%
  .[. != ""]
length(td)
td <- td[9:787]
