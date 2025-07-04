
is_palindrome <- function(x) {
  # ~ Concise solution ~
  # Inputs
  #   * x: integer
  # Returns
  #   * boolean
  
  if (x < 0) {return(FALSE)}
  
  num <- x
  reverse <- 0
  
  while (num != 0) {
    reverse <- reverse * 10 + num %% 10
    num <- num %/% 10
  }

  return(x == reverse)
}

is_palindrome_explained <- function(x) {
  # ~ Same logic with comments ~
  # Inputs
  #   * x: integer
  # Returns
  #   * boolean
  
  # Negative numbers cannot be palindromes
  if (x < 0) {return(FALSE)}
  
  num <- x       # Copy of x
  reverse <- 0   # Holds reversed number
  
  # Iterates through number to create a reverse of x
  while (num != 0) {
    # Shifts reverse and appends one's number digit
    reverse <- reverse * 10 + num %% 10
    
    # Removes one's digit from number
    num <- num %/% 10
  }
  
  # Returns if x matches its reverse
  return(x == reverse)
}