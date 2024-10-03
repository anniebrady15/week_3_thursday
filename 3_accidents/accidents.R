library(tidyverse)
library(here)
accidents <- read_rds(here("data", "accidents.rds"))

Weekend <- accidents %>% 
  filter(day_of_week == "Saturday" | day_of_week == "Sunday") %>% 
  select(severity, day_of_week, time, date)
  
Weekday <- accidents %>% 
  filter(day_of_week == "Monday" | day_of_week == "Tuesday" | day_of_week == "Wednesday" | day_of_week == "Thursday" | day_of_week == "Friday") %>% 
  select(severity, day_of_week, time, date)



geom_density
