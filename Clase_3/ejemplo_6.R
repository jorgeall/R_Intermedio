x <- c(1, 2, 3)
library(lobstr)
y <- x
obj_addr(x)
obj_addr(y)
x
y
str(x)
str(y)
class(x)
class(y)

_abc <- 1
if <- 10
`_abc` <- 1

`if` <- 10
#alt 96  ``
`_abc`

`if`

y[[3]] <- 4

x
y
obj_addr(x)
obj_addr(y)
