#onmath color schemes
library(RColorBrewer)
library(wesanderson)
library(scales)
library(ggplot2)
library(ggthemes)
#-----color-----
#heatmap color
gg_col <- function(colors,type="continuous",n=100){
  if(type == "div"){
    df <- data.frame(
      x = 1:n,
      y = rep(1,n),
      z = colors
    )
    gg <- ggplot(df,aes(x,y,fill=z))+geom_tile()+theme(axis.text.x = element_blank(),
                                                       axis.text.y = element_blank(),
                                                       panel.grid.major = element_blank(),
                                                       panel.grid.minor = element_blank(),
                                                       panel.border = element_blank(),
                                                       axis.ticks = element_blank())+
      xlab("")+ylab("")+scale_fill_manual(values = df$z)+guides(fill=F)
  }else{
    gg <- ggplot(data = data.frame(x=1:100,y=rep(1,100),z=1:100),aes(x,y,fill=z))+
      geom_raster()+theme(axis.text.x = element_blank(),
                          axis.text.y = element_blank(),
                          panel.grid.major = element_blank(),
                          panel.grid.minor = element_blank(),
                          panel.border = element_blank(),
                          axis.ticks = element_blank())+
      xlab("")+ylab("")+scale_fill_gradientn(colours = colors)+guides(fill = F)
  }
  return(gg)
}
heatmap_color_schemes1 <- colorRampPalette(brewer.pal(10,"RdYlGn"))(100)
heatmap_color_schemes2 <- colorRampPalette(brewer.pal(10,"RdYlBu"))(100)
heatmap_color_schemes3 <- wes_palette("Zissou",100,type = "continuous")
#ggsave(filename = "heatmap_color_schemes1.png",plot = gg_col(heatmap_color_schemes1),width = 12,height = 4,dpi = 300,type = "cairo")
#ggsave(filename = "heatmap_color_schemes2.png",plot = gg_col(heatmap_color_schemes2),width = 12,height = 4,dpi = 300,type = "cairo")
#ggsave(filename = "heatmap_color_schemes3.png",plot = gg_col(heatmap_color_schemes3),width = 12,height = 4,dpi = 300,type = "cairo")
#div color
#div 2~5
div2 <- brewer.pal(3,"Set1")[1:2]
div3 <- brewer.pal(3,"Set1")
div5 <- wes_palette("Darjeeling")
gg_col(div3,type = "div",n = 3)
#ggsave(filename = "div3.png",plot = gg_col(div3,type = "div",n = 3),width = 8,height = 4,dpi = 300,type = "cairo")
#png(filename = "div5.png",width = 800,height = 400,type = "cairo",res = 300)
#wes_palette("Darjeeling")
#dev.off()
#div 5~10
div7<- c(brewer.pal(6,"Set1"),brewer.pal(4,"Dark2")[4])
gg_col(colors = div7,type = "div",n = 7)
#div > 10
gg_col(colors = brewer.pal(12,"Set3"),type = "div",n = 12)
#ggsave(filename = "div10.png",plot = gg_col(colors = brewer.pal(12,"Set3"),type = "div",n = 12),width = 12,height = 4,dpi = 300,type = "cairo")
#-----theme----
ggplot(mtcars,aes(x=mpg,y=disp))+geom_point()
theme_Publication <- function(base_size=14, base_family="helvetica") {
  require('grid',quietly = T)
  require('ggthemes',quietly = T)
  (theme_foundation(base_size=base_size, base_family=base_family)
    + theme(plot.title = element_text(face = "bold",
                                      size = rel(1.2), hjust = 0.5),
            text = element_text(),
            panel.background = element_rect(colour = NA),
            plot.background = element_rect(colour = NA),
            panel.border = element_rect(colour = NA),
            
            axis.title = element_text(face = "bold",size = rel(1)),
            axis.title.y = element_text(angle=90,vjust =2),
            axis.title.x = element_text(vjust = -0.2),
            axis.text = element_text(), 
            axis.line = element_line(colour="black"),
            axis.ticks = element_line(),
            panel.grid.major = element_line(colour="#f0f0f0"),
            panel.grid.minor = element_blank(),
            legend.key = element_rect(colour = NA),
            legend.position = "bottom",
            legend.direction = "horizontal",
            legend.key.size= unit(0.2, "cm"),
            legend.margin = unit(0, "cm"),
            legend.title = element_text(face="italic"),
            plot.margin=unit(c(10,5,5,5),"mm"),
            strip.background=element_rect(colour="#f0f0f0",fill="#f0f0f0"),
            strip.text = element_text(face="bold")
    ))
  
}

scale_fill_Publication <- function(...){
  library(scales)
  discrete_scale("fill","Publication",manual_pal(values = c("#386cb0","#fdb462","#7fc97f","#ef3b2c","#662506","#a6cee3","#fb9a99","#984ea3","#ffff33")), ...)
  
}

scale_colour_Publication <- function(...){
  library(scales)
  discrete_scale("colour","Publication",manual_pal(values = c("#386cb0","#fdb462","#7fc97f","#ef3b2c","#662506","#a6cee3","#fb9a99","#984ea3","#ffff33")), ...)
  
}


