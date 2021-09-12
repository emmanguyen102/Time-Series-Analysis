## Exercise 5

wn.t = rt(100,1,0)
plot(wn.t,ylab = "White noise process of t-distribution with 1 d.f", xlab ="Time", type = "o")
acf(wn.t, main = "Sample ACF of White Noise of t-dist with 1 df") 


wn.chi = rchisq(100, 4, 0)
plot(wn.chi,ylab = "White noise process of chi-square distribution with 4 d.f", xlab ="Time", type = "o")
acf(wn.chi, main = "Sample ACF of White Noise of chi-square dist with 4 df") 


