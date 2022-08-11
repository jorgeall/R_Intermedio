library(sloop)
f <- factor(c("a", "b", "c"))
str(f)
f
class(f)
typeof(f)
attributes(f)
unclass(f)
ftype(print)
ftype(str)
ftype(unclass)
print(f)
# stripping class reverts to integer behaviour
print(unclass(f))
time <- strptime(c("2017-01-01","2020-05-04 03:21"),"%Y-%m-%d")
str(time)
str(unclass(time))

s3_dispatch(print(f))
ftype(t.test)

ftype(t.data.frame)

ftype(t)
str(t)
