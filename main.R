pacman::p_load(tidyverse,
               here)


if(!require(pacman)) install.packages("pacman")
  

tv_hours_table <- gss_cat %>%
  group_by(marital) %>%
  summarise(mean_tv_hours = mean(tvhours, na.rm = T))

write.csv(tv_hours_table, here("tv_hours_by_marital.csv"))