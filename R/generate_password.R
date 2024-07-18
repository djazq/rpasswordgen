#' Generate a single password
#'
#' @param length Length of the password.
#' @param use_upper Logical, use uppercase letters.
#' @param use_lower Logical, use lowercase letters.
#' @param use_numbers Logical, use numbers.
#' @param use_special Logical, use special characters.
#' @return A randomly generated password.
#' @examples
#' # Generate a 16-character password with all types of characters
#' generate_password(16, TRUE, TRUE, TRUE, TRUE)
#'
#' # Generate a 12-character password with only lowercase and numbers
#' generate_password(12, use_upper = FALSE, use_lower = TRUE, use_numbers = TRUE, use_special = FALSE)
#' @export
generate_password <- function(length = 12, use_upper = TRUE, use_lower = TRUE, use_numbers = TRUE, use_special = TRUE) {
  upper_chars <- "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  lower_chars <- "abcdefghijklmnopqrstuvwxyz"
  number_chars <- "0123456789"
  special_chars <- "!@#$%^&*()-_=+<>?"

  char_pool <- ""
  if (use_upper) char_pool <- paste0(char_pool, upper_chars)
  if (use_lower) char_pool <- paste0(char_pool, lower_chars)
  if (use_numbers) char_pool <- paste0(char_pool, number_chars)
  if (use_special) char_pool <- paste0(char_pool, special_chars)

  if (nchar(char_pool) == 0) stop("You must allow at least one type of characters to generate a password.")

  password <- paste0(sample(strsplit(char_pool, "")[[1]], length, replace = TRUE), collapse = "")
  return(password)
}
