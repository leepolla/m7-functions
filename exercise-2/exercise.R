# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(x, y) {
  return(abs(length(x) - length(y)))
}

# Pass two vectors of different length to your `CompareLength` function
vec1 <- 1:4
vec2 <- 2:7
CompareLength(vec1, vec2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(x, y) {
  if (length(x) > length(y)) {
    return(paste("Your first vector is longer by", CompareLength(x, y), "elements", sep = " "))
  }else {
    return(paste("Your second vector is longer by", CompareLength(x, y), "elements", sep = " "))
  }
}


# Pass two vectors to your `DescribeDifference` function
DescribeDifference(vec1, vec2)
 
### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
LongerVector <- function(x, y) {
  if (length(x) > length(y)) {
    return(deparse(substitute(x)))
  }else {
    return(deparse(substitute(y)))
  }
}

LongerVector(vec1, vec2)
