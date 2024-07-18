#' Generate multiple passwords
#'
#' @param n Number of passwords to generate.
#' @param length Length of each password.
#' @param use_upper Logical, use uppercase letters.
#' @param use_lower Logical, use lowercase letters.
#' @param use_numbers Logical, use numbers.
#' @param use_special Logical, use special characters.
#' @return A vector of randomly generated passwords.
#' @examples
#' # Generate 5 passwords, each 16 characters long with all types of characters
#' generate_multiple_passwords(5, 16, TRUE, TRUE, TRUE, TRUE)
#'
#' # Generate 3 passwords, each 12 characters long with only lowercase and numbers
#' generate_multiple_passwords(3, 12, use_upper = FALSE, use_lower = TRUE, use_numbers = TRUE, use_special = FALSE)
#' @export
generate_multiple_passwords <- function(n = 10, length = 12, use_upper = TRUE, use_lower = TRUE, use_numbers = TRUE, use_special = TRUE) {
  passwords <- vector("character", n)
  for (i in 1:n) {
    passwords[i] <- generate_password(length, use_upper, use_lower, use_numbers, use_special)
  }
  return(passwords)
}
