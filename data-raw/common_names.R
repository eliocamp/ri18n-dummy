## code to prepare `common_names` dataset goes here

names <- babynames::babynames |>
  aggregate(n ~ name, data = _, FUN = sum)


common_names <- names[order(names$n, decreasing = TRUE), ][1:10, ]
rownames(common_names) <- NULL

usethis::use_data(common_names, overwrite = TRUE)
