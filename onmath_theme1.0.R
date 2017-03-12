#2017-03-12
#create onmath_theme
#color theme
#loading packages
library(ggplot2)
library(ggthemes)
library(scales)
#default theme:theme_grey()
#change it!
#base theme: theme_bw()
theme_onmath <- function(base_size = 14){
  theme_bw()+
  theme(panel.background = element_blank(),
        panel.grid.minor = element_blank(),
        plot.background = element_blank(),
        panel.border = element_blank(),
        axis.line = element_line(colour = 'black'),
        axis.text = element_text(color = 'black',face = 'bold'),
        axis.title = element_text(face = 'bold',size = base_size),
        axis.title.x = element_text(vjust = -0.2),
        axis.title.y = element_text(angle=90,vjust =2),
        plot.title = element_text(face = "bold",size = rel(1.2), hjust = 0.5),
        legend.key = element_blank(),
        legend.margin = unit(0,'cm'),
        legend.title = element_text(face = 'italic'),
        strip.background=element_rect(colour="#f0f0f0",fill="#f0f0f0"),
        strip.text = element_text(face="bold")
        )
}
#color and fill
scale_color_onmath <- function(...){
  library(scales)
  discrete_scale("colour","onmath",manual_pal(values = c("#386cb0","#fdb462","#7fc97f","#ef3b2c","#662506","#a6cee3","#fb9a99","#984ea3","#ffff33")), ...) 
}
scale_fill_onmath <- function(...){
  library(scales)
  discrete_scale("colour","onmath",manual_pal(values = c("#386cb0","#fdb462","#7fc97f","#ef3b2c","#662506","#a6cee3","#fb9a99","#984ea3","#ffff33")), ...) 
}
#save it!
demo <- ggplot(data = mtcars,aes(mpg,disp,colour=as.factor(cyl)))+geom_point()+theme_onmath()+scale_color_onmath()
ggsave(filename = 'onamth_demo.png',plot = demo,type = 'cairo',width = 8,height = 6)

png(filename = 'onmath_demo2.png',width = 800,height = 600,res = 300,type = 'cairo')
ggplot(data = mtcars,aes(mpg,disp,colour=as.factor(cyl)))+geom_point()+theme_onmath()+scale_color_onmath()
dev.off()



