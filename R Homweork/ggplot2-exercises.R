library(tidyverse)
dat <- read_csv("EconomistData.csv")
print(dat)

# Exercise I

#creates a scatter plot with CPI on the x axis and HDI on the y axis
i <- ggplot(dat, aes(x=CPI,y=HDI)) + geom_point()
print(i)

#colors the points blue
ii <- ggplot(dat, aes(x=CPI,y=HDI)) + geom_point(color="blue1")
print(ii)

#maps the color of the the points to Region
iii <- ggplot(dat, aes(x=CPI,y=HDI, color=Region)) + geom_point() + scale_colour_manual(values = c(blues9))
print(iii)

#make the points bigger by setting size to 2
iv <- ggplot(dat, aes(x=CPI,y=HDI, color=Region)) + geom_point(size=2) + scale_colour_manual(values = c(blues9))
print(iv)

#maps the size of the points to HDI.Rank
v <- ggplot(dat, aes(x=CPI,y=HDI, color=Region, size=HDI.Rank)) + geom_point() + scale_colour_manual(values = c(blues9))
print(v)

# Exercise II

#creates a scatter plot with CPI on the x axis and HDI on the y axis
i <- ggplot(dat, aes(x=CPI,y=HDI)) + geom_point()
print(i)

#overlays a smoothing line on top of the scatter plot using geom_smooth
ii <- ggplot(dat, aes(x=CPI,y=HDI)) + geom_point() + geom_smooth()
print(ii)

#overlays a smoothing line on top of the scatter plot using geom_smooth, but uses a linear model for the predictions
iii <- ggplot(dat, aes(x=CPI,y=HDI)) + geom_point() + geom_smooth(method=lm)
print(iii)

#overlays a smoothing line on top of the scatter plot using geom_line. Hint: change the statistical transformation.
iv <- ggplot(dat, aes(x=CPI,y=HDI)) + geom_point() + geom_smooth(method=lm) + geom_line(method="loses")
print(iv)

#overlays a smoothing line on top of the scatter plot using the default loess method, but makes it less smooth
v <- ggplot(dat, aes(x=CPI,y=HDI)) + geom_point() + geom_smooth(method="loess", span=0.50)
print(v)

# Exercise III

#creates a scatter plot with CPI on the x axis and HDI on the y axis, colors points to region
i <- ggplot(dat, aes(x=CPI,y=HDI, color=Region)) + geom_point()
print(i)

#modifies the x, y, and color scales so that they have more easily-understood names
ii <- ggplot(dat, aes(x=CPI,y=HDI, color=Region))+geom_point() + xlab("Corruption Perception Index") + ylab("Human Development Index")
print(ii)

#modifies the color scale to use specific values of your choosing
iii <- ggplot(dat, aes(x=CPI,y=HDI, color=Region)) + geom_point() + xlab("Corruption Perception Index") + ylab("Human Development Index") + scale_colour_manual(values = c("purple", "purple1", "purple2", "purple3", "purple4", "magenta"))
print(iii)

