# data frames
library(lobstr)
d1 <- data.frame(x = c(1, 5, 6), y = c(2, 4, 3))
obj_addr(d1)
d2 <- d1
obj_addr(d2)
d2[, 2] <- d2[, 2] * 2
obj_addr(d2)
d3 <- d1
obj_addr(d3)
d3[1, ] <- d3[1, ] * 3
obj_addr(d3)