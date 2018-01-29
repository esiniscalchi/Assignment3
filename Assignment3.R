Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")
ABC_political_poll_results <- c(4, 62, 51, 21, 2, 14, 15)
CBS_political_poll_results <- c(12, 75, 43, 19, 1, 21, 19)
results.df <- data.frame(Name, ABC_political_poll_results, CBS_political_poll_results)
results.df
Name ABC_political_poll_results CBS_political_poll_results
1     Jeb                          4                         12
2  Donald                         62                         75
3     Ted                         51                         43
4   Marco                         21                         19
5   Carly                          2                          1
6 Hillary                         14                         21
7  Berine                         15                         19

mean(results.df[2,3])
[1] 75

c.df<-results.df
c.df
Name ABC_political_poll_results CBS_political_poll_results
1     Jeb                          4                         12
2  Donald                         62                         75
3     Ted                         51                         43
4   Marco                         21                         19
5   Carly                          2                          1
6 Hillary                         14                         21
7  Berine                         15                         19

results.df <- data.frame (Name,ABC_political_poll_results, CBS_political_poll_results)
results.df
Name ABC_political_poll_results CBS_political_poll_results
1     Jeb                          4                         12
2  Donald                         62                         75
3     Ted                         51                         43
4   Marco                         21                         19
5   Carly                          2                          1
6 Hillary                         14                         21
7  Berine                         15                         19

C.df <-data.frame(results.df)
C.df
Name ABC_political_poll_results CBS_political_poll_results
1     Jeb                          4                         12
2  Donald                         62                         75
3     Ted                         51                         43
4   Marco                         21                         19
5   Carly                          2                          1
6 Hillary                         14                         21
7  Berine                         15                         19

as.matrix(C.df)
Name      ABC_political_poll_results CBS_political_poll_results
[1,] "Jeb"     " 4"                       "12"                      
[2,] "Donald"  "62"                       "75"                      
[3,] "Ted"     "51"                       "43"                      
[4,] "Marco"   "21"                       "19"                      
[5,] "Carly"   " 2"                       " 1"                      
[6,] "Hillary" "14"                       "21"                      
[7,] "Berine"  "15"                       "19" 

matrix(as.numeric(unlist(C.df)),nrow=nrow(C.df))
[,1] [,2] [,3]
[1,]    5    4   12
[2,]    3   62   75
[3,]    7   51   43
[4,]    6   21   19
[5,]    2    2    1
[6,]    4   14   21
[7,]    1   15   19

C = matrix(as.numeric(unlist(C.df)),nrow=nrow(C.df))
C
[,1] [,2] [,3]
[1,]    5    4   12
[2,]    3   62   75
[3,]    7   51   43
[4,]    6   21   19
[5,]    2    2    1
[6,]    4   14   21
[7,]    1   15   19

mean(C)
[1] 18.42857

ggplot(results.df)
ggplot
function (data = NULL, mapping = aes(), …, environment = parent.frame()) { UseMethod(“ggplot”) } <environment: namespace:ggplot2>

r=rowMeans(results.df[,2:3])
r.df=data.frame(Name,r)
mean(as.matrix(results.df[,2:3]))
[1] 25.64286
