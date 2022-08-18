library(lobstr)
x <- c("a", "a", "abc", "d")
obj_addr(x)
obj_addr(x[1])
obj_addr(x[2])
obj_addr(x[3])
obj_addr(x[4])

ref(x, character = TRUE)


# tamaño de los objetos
obj_size(letters)
obj_size(ggplot2::diamonds)
x <- runif(1e6)
obj_size(x)
y <- list(x, x, x)
obj_size(y)
obj_size(list(NULL, NULL, NULL))
banana <- "bananas bananas bananas"
obj_size(banana)
obj_size(rep(banana, 100))
obj_size(x, y)
obj_size(1:3)
obj_size(1:1e3)
obj_size(1:1e6)
obj_size(1:1e9)

# Modificar en el lugar
v <- c(1, 2, 3)
obj_addr(v)
v[[3]] <- 4
obj_addr(v)
x <- data.frame(matrix(runif(5 * 1e4), ncol = 5))
medians <- vapply(x, median, numeric(1))

for (i in seq_along(medians)) {
  x[[i]] <- x[[i]] - medians[[i]]
}
cat(tracemem(x), "\n")
for (i in 1:5) {
  x[[i]] <- x[[i]] - medians[[i]]
}
untracemem(x)