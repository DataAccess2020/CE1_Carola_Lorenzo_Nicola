# Let's plot our results 

library(ggplot2)
library(tidyr)
library(tidyverse)

#renaming vars for the plot
age_cmprd<- rename(age_cmprd, "age of PMs (avg)" = "avg_age")
age_cmprd<- rename( age_cmprd, "age of population (median)" = ppl_mdn)
age_cmprd<- rename(age_cmprd, "difference" = diff_age)


#plotting a bar graph of our comparison
age_cmprd %>%
  gather("Type", "Values",-COUNTRY) %>%
  ggplot(aes(COUNTRY, Values, fill = Type))+
  geom_bar(position = "dodge", stat = "identity")+
  labs(title = "Population and PMs' age compared")+
ylab("AGE")+
  scale_fill_manual(values = c("aquamarine", "dark blue","orange"), "")+
  theme_bw()


