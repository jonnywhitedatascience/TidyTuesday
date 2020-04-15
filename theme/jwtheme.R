# This is my standard theme i have created and will update this as i go to ensure my outputs are standardised and look good and are accessible.

## @knitr jdwtheme

jwtheme<-theme(
  panel.background = element_blank(),
  panel.grid.major.x =  element_line(size=0.1, colour = "grey65"),
  panel.grid.minor.x =  element_line(size=0.1, colour = "grey65"),
  panel.grid.major.y = element_blank(),
  plot.background = element_rect(fill="light blue"),
  plot.title = element_text(color = "grey20", size = 14, hjust = -0, face="bold"),
  plot.subtitle = element_text(color = "grey20", size = 10, hjust = 0, face="plain"),
  plot.caption = element_text(color = "grey40", size = 8, hjust = 1, face="plain"),
  axis.text.x = element_text(color = "grey20", size = 8, hjust = .5, vjust = .5, face = "plain"),
  axis.text.y = element_text(color = "grey20", size = 8, hjust = 1,  face = "plain"),
  axis.title.x = element_text(color = "grey20", size = 8, hjust = .5, vjust = .5, face = "plain"),
  axis.title.y = element_text(color = "grey20", size = 8, hjust = .5, vjust = .5, face = "plain"),
  strip.background =element_rect(fill="red"),
  strip.text = element_text(colour = "white", size=10, face="plain" ),
  text=element_text(family="Verdana"),
  legend.position =  "none"
)