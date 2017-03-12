# 这个仓库作为onmath可视化的基本配色方案和主题设置

配色方案基于[**karthik's wesanderson**](https://github.com/karthik/wesanderson)和[**RColorBrewer**](https://github.com/cran/RColorBrewer)[**ggthemes**](https:/github.com/jrnold/ggthemes)
在R环境下安装这些包：
```
install.packages("wesanderson")
install.packages("ggthemes")
```
或者安装develpment version:
```
devtools::install_github("karthik/wesanderson")
```
## heatmap_color_schemes
- heatmap_color_schemes1

![image](./figure/heatmap_color_schemes1.png)

- heatmap_color_schemes2

![image](./figure/heatmap_color_schemes2.png)

- heatmap_color_schemes3

![image](./figure/heatmap_color_schemes3.png)
## div_color_schemes
- div <= 3:

![image](./figure/div3.png)

- div = 5:

![image](./figure/div5.png)

- div >= 10:

![image](./figure/div10.png)

## theme
```
basic_theme <- theme_bw()
```
## forexample
- boxplot for div5 in RColorBrewer

![image](./figure/demo_boxplot_color_brewer_set1.png)

- boxplot for div5 in wesanderson

![image](./figure/demo_boxplot_color_wes_palette.png)

- a demo of onmath_theme

![image](./figure/onmath_demo.png)
