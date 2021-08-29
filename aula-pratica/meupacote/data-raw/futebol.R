## code to prepare `futebol` dataset goes here

futebol <- readr::read_csv2("https://git.io/JOqUN")

usethis::use_data(futebol, overwrite = TRUE)
