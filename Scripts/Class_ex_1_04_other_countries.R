#other countries
part2_prlm_df<- prlm_df %>% filter(COUNTRY == "Italy" | COUNTRY == "Netherlands" | COUNTRY == "Iceland" | COUNTRY == "Sweden" | COUNTRY == "Spain" | COUNTRY == "Portugal" | COUNTRY == "Austria" | COUNTRY == "Finland" | COUNTRY == "Bulgaria" | COUNTRY == "Latvia" | COUNTRY == "Norway" | COUNTRY == "Croatia" | COUNTRY == "Belgium" | COUNTRY == "Switzerland" | COUNTRY == "Malta" | COUNTRY == "Czech Republic" | COUNTRY == "Slovakia" | COUNTRY == "Lithuania" | COUNTRY == "Liechtenstein")

#setting the age numerical, again
part2_prlm_df$AGE_num<-as.numeric(part2_prlm_df$AGE)

#computing the mean
part2_avg<-part2_prlm_df %>% group_by(COUNTRY) %>% summarise(int_avg = mean(AGE_num, na.rm = T))


ggplot(part2_avg,aes(y = int_avg, x = COUNTRY)) +
  geom_bar(stat = "identity", position = "dodge", col = "black")+
   ylab("Average age of PMs") +
  xlab("Country") +
  theme_bw()+
  theme(axis.text.x = element_blank())

View(part2_avg)

