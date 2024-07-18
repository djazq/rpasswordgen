test_that("generate_multiple_passwords generates the correct number of passwords", {
  passwords <- generate_multiple_passwords(n = 5, length = 16)
  expect_equal(length(passwords), 5)
})

test_that("each generated password has the correct length", {
  passwords <- generate_multiple_passwords(n = 5, length = 16)
  expect_true(all(nchar(passwords) == 16))
})

test_that("generated passwords include uppercase letters when use_upper is TRUE", {
  passwords <- generate_multiple_passwords(n = 5, length = 16, use_upper = TRUE, use_lower = FALSE, use_numbers = FALSE, use_special = FALSE)
  expect_true(all(grepl("[A-Z]", passwords)))
})

test_that("generated passwords include lowercase letters when use_lower is TRUE", {
  passwords <- generate_multiple_passwords(n = 5, length = 16, use_upper = FALSE, use_lower = TRUE, use_numbers = FALSE, use_special = FALSE)
  expect_true(all(grepl("[a-z]", passwords)))
})

test_that("generated passwords include numbers when use_numbers is TRUE", {
  passwords <- generate_multiple_passwords(n = 5, length = 16, use_upper = FALSE, use_lower = FALSE, use_numbers = TRUE, use_special = FALSE)
  expect_true(all(grepl("[0-9]", passwords)))
})

test_that("generated passwords include special characters when use_special is TRUE", {
  passwords <- generate_multiple_passwords(n = 5, length = 16, use_upper = FALSE, use_lower = FALSE, use_numbers = FALSE, use_special = TRUE)
  expect_true(all(grepl("[!@#$%^&*()\\-_=+<>?]", passwords)))
})

test_that("generate_multiple_passwords returns an error when all character types are FALSE", {
  expect_error(generate_multiple_passwords(n = 5, length = 16, use_upper = FALSE, use_lower = FALSE, use_numbers = FALSE, use_special = FALSE))
})

test_that("generate_multiple_passwords returns an error for non-positive length", {
  expect_error(generate_multiple_passwords(n = 5, length = -1))
})

test_that("generate_multiple_passwords returns an error for non-positive n", {
  expect_error(generate_multiple_passwords(n = -1, length = 16))
})
