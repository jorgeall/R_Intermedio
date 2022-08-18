library(lobstr)
x <- c(1, 2, 3)
cat(tracemem(x), "\n")
obj_addr(x)
y <- x
y[[3]] <- 4L
y[[3]] <- 5L

untracemem(x)
y[[3]] <- 6L
obj_addr(x)
a <- x

f <- function(a) {
  a
}
x <- c(1, 2, 3)
cat(tracemem(x), "\n")
z <- f(x)   # there's no copy here!
untracemem(x)



# Listas
l1 <- list(1, 2, 3)
obj_addr(l1)
l2 <- l1
obj_addr(l2)
l2[[3]] <- 4
obj_addr(l1)
obj_addr(l2)

ref(l1, l2)