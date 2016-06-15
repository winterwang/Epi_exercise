source('https://raw.githubusercontent.com/walkerke/teaching-with-datavis/master/pyramids/rcharts_pyramids.R')


dPyramid('JA', seq(2000, 2050, 10), colors = c('black', 'red'))


```{r echo=FALSE, fig.height=14, fig.width=14}
par(mar=c(3, 4, 5.5, 0.5))
x<-0:60
plot(x,dnorm(x,30,10), type="h", lwd=5, col="dodgerblue",xlab="", ylab="", cex.lab=1, cex.lab=3)
title(main="正規分布グラフ\n(平均:30 / 標準偏差:10)", cex.main = 3)
text(47,0.035, expression(italic(f(x)==over(1,sqrt(2*pi*sigma^2))*e^(-over(-(x-mu)^2, 2*sigma^2)))), cex=3.5)

```

*** 