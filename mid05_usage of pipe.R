# 使用 `%>%` 簡化程式
# install.packages("magrittr")
library(magrittr)

# 期中作業：使用 %>% 簡化這段程式然後上傳至 GitHub
load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
# this_year <- as.numeric(format(Sys.Date(), '%Y'))
# birth_year <- this_year - straw_hat_df$age
# birth_date_chr <- paste(birth_year, straw_hat_df$birthday, sep = "-")
# straw_hat_df$birth_date <- as.Date(birth_date_chr)
# straw_hat_df$birth_date

# 改寫完成！
straw_hat_df$birth_date <- Sys.Date() %>%
  format(format = "%Y") %>%
  as.numeric() %>%
  `-` (straw_hat_df$age) %>%
  paste(straw_hat_df$birthday, sep = "-") %>%
  as.Date()
straw_hat_df$birth_date