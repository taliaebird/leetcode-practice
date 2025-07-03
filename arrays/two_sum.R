
# Concise solution
two_sum <- function(nums, target) {
  # ~ Concise solution ~
  # nums: numeric vector
  # target: numeric
  # Returns: integer vector of indices
  
  hashmap <- c()
  
  for (i in seq_along(nums)) {
    num <- nums[i]
    complement <- target - num
    
    if (as.character(complement) %in% names(hashmap)) {
      return(c(hashmap[[as.character(complement)]], i))
    } 
    hashmap[[as.character(num)]] <- i
  }
  
  return(integer(0))
}

# Same logic with comments
two_sum_explained <- function(nums, target) {
  # ~ Same logic with comments ~
  # nums: numeric vector
  # target: numeric
  # Returns: integer vector of indices
  
  # Create hashmap (vector in R)
  hashmap <- c()
  
  # Sequence along nums array
  for (i in seq_along(nums)) {
    num <- nums[i]               
    complement <- target - num   # Value that would sum to target
    
    # If complement exists, solution!
    if (as.character(complement) %in% names(hashmap)) {
      
      # Returns complement index and current index
      return(c(hashmap[[as.character(complement)]], i))
    } 
    
    # Saves num and index
    hashmap[[as.character(num)]] <- i
  }
  
  # No solution
  return(integer(0))
  
}