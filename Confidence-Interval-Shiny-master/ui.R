library(shiny)
library(ggvis)
# run shiny in local network address 
# runApp(host = "0.0.0.0")
shinyUI(
  navbarPage( withMathJax(), 
    '平均値の95%信頼区間',
  tabPanel('説明',
           h1(("同じ実験を100回実施し，100個の信頼区間を作る．
              そのうち95個の区間には真の値が含まれる"))),
  tabPanel('可視化',
     sidebarLayout(
       sidebarPanel(
         selectizeInput('N', '実験実施の回数(Number of samples)',
                        choices=c('10','20','50','100','500'), selected=100,
                        options=list(create=T)),
         #selectizeInput('size', 'サンプルサイズ(Sample size)',
          #              choices=c('5','10','25','50','100'), selected=25,
           #             options=list(create=T)),
         sliderInput('size',"サンプルサイズ(Sample size)", 
                     min=10, max=400, step=1, value=100),
         sliderInput('alpha', '信頼水準(Confidence level)', min=0, max=0.99, step=0.01, value=0.95),
         numericInput('mean', '真の身長の平均値(mean, cm)', value=170),
         numericInput('sd', '標準偏差(Standard deviation)', value=5)
       ),
       
       mainPanel(
         ggvisOutput('plot'),
         textOutput('count')
       )
     )
  )
))