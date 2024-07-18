test_that("generate_password generates a password of the correct length", {
  password <- generate_password(length = 16)
  expect_equal(nchar(password), 16)
})

test_that("generate_password includes uppercase letters when use_upper is TRUE", {
  password <- generate_password(length = 16, use_upper = TRUE, use_lower = FALSE, use_numbers = FALSE, use_special = FALSE)
  expect_true(grepl("[A-Z]", password))
})

test_that("generate_password includes lowercase letters when use_lower is TRUE", {
  password <- generate_password(length = 16, use_upper = FALSE, use_lower = TRUE, use_numbers = FALSE, use_special = FALSE)
  expect_true(grepl("[a-z]", password))
})

test_that("generate_password includes numbers when use_numbers is TRUE", {
  password <- generate_password(length = 16, use_upper = FALSE, use_lower = FALSE, use_numbers = TRUE, use_special = FALSE)
  expect_true(grepl("[0-9]", password))
})

test_that("generate_password includes special characters when use_special is TRUE", {
  password <- generate_password(length = 16, use_upper = FALSE, use_lower = FALSE, use_numbers = FALSE, use_special = TRUE)
  expect_true(grepl("[!@#$%^&*()\\-_=+<>?]", password))
})

test_that("generate_password returns an error when all character types are FALSE", {
  expect_error(generate_password(length = 16, use_upper = FALSE, use_lower = FALSE, use_numbers = FALSE, use_special = FALSE))
})

test_that("generate_password returns an error for non-positive length", {
  expect_error(generate_password(length = -1))
})
