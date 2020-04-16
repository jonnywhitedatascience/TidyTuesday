# Tidy Tuesdays - 2020-03-31
# Jonny White
# jonnywhitedatascience.github.io

library(tidyverse)
library(extrafont)

loadfonts(device="win", quiet = TRUE)

# Get the Data
brewing_materials <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-03-31/brewing_materials.csv')
beer_taxed <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-03-31/beer_taxed.csv')
brewer_size <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-03-31/brewer_size.csv')
beer_states <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-03-31/beer_states.csv')

#My Economist Theme

jwtheme<-theme(panel.background = element_blank(),
               panel.grid.major = element_line(size=0.1, colour = "white"),
               panel.grid.minor = element_blank(),
               plot.background = element_rect(fill="light blue"),
               plot.title = element_text(color = "grey20", size = 14, face="bold"),
               axis.text.x = element_text(color = "grey20", size = 6, hjust = .5, vjust = .5, face = "plain"),
               axis.text.y = element_text(color = "grey20", size = 8, hjust = 1,  face = "plain"),
               axis.title.x = element_text(color = "grey20", size = 10, hjust = .5, vjust = .5, face = "plain"),
               axis.title.y = element_text(color = "grey20", size = 10, hjust = .5, vjust = .5, face = "plain"),
               strip.background =element_rect(fill="red"),
               strip.text = element_text(colour = "white", size=10, face="plain" ),
               text=element_text(family="Verdana")
)


# Quick Exploratory Data Analysis
beer_states %>%
  filter(state != "total") %>%
ggplot()+
  geom_boxplot(
    mapping = aes(
      x=state, y = barrels)
    )+
  coord_flip()

as_tibble(brewing_materials)
as_tibble(beer_taxed)
as_tibble(brewer_size)
as_tibble(beer_states)

brewer_size %>%
  filter (brewer_size != "Total" ) %>%
  ggplot()+
    geom_col(
      mapping=aes(
        x=brewer_size,y=n_of_brewers)
    )+
  ggtitle(label="Brewer size by year")+
  xlab("brewer size")+
  ylab("number of brewers")+
  coord_flip()+
  facet_wrap(~year, nrow=3)+
  jwtheme
  