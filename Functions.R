# Creating a function
# This function accepts a vector
# and calculates the percentage value for
# each element

add_percent <- function(x)
{
  percent <- round( x * 100, digits = 1)
  result <- paste(percent, "%", sep = "")
  #Return the calculation, Note this is optional
  #Since R returns the value of the last line of code
  return(result)
}

sample_vector <- c(0.458, 1.6653, 0.83112)
updated_vector <- add_percent(sample_vector)
updated_vector

# Adding an extra arguments in the function

new_function <- function(arg1, multiplier, no_of_digits)
{
  percent <- round(arg1 * multiplier, no_of_digits)
  result <- paste(percent, "%", sep = "")
  #Return the calculation, Note this is optional
  #Since R returns the value of the last line of code
  return(result)
}

sample_vector <- c(0.458, 1.6653, 0.83112)
updated_vector <- new_function(sample_vector, multiplier = 100, no_of_digits = 1)
updated_vector

### 02.04.2019

# Adding default values
add_percent <- function(x, multiplier = 100, no_digits = 1)
{
  percent <- round( x * multiplier, digits = no_digits)
  result <- paste(percent, "%", sep = "")
  #Return the calculation, Note this is optional
  #Since R returns the value of the last line of code
  return(result)
}

add_percent(sample_vector)

# Price calculator
# IF ... ELSE statement
price_calculator <- function(hourly_value, pph = 40, public = TRUE){
  # Calculate charges as hourly rate x price per hour
  net_price <- hourly_value * pph
  if (hourly_value > 100) {
    net_price <- net_price * 0.9
  }
  if (public) {
    total_price <- net_price * 1.06
  }
  else {
    total_price <- net_price * 1.12
  }
  return(total_price)
}

price_calculator(hourly_value = 45, public = FALSE)
