generate_multiple_passwords <- function(n = 10, length = 12, use_upper = TRUE, use_lower = TRUE, use_numbers = TRUE, use_special = TRUE) {
  passwords <- vector("character", n)
  for (i in 1:n) {
    passwords[i] <- generate_password(length, use_upper, use_lower, use_numbers, use_special)
  }
  return(passwords)
}
