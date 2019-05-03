
context("test checkers for binomial")

test_that("check_prob works as intended", {
  expect_equal(check_prob(0.2), TRUE) #between 0 and 1
  expect_error(check_prob(1.2)) #error for above 1
  expect_error(check_prob(-1)) #error for below 0
  expect_length(check_prob(0.3), 1) #length 1 result
})

test_that("check_trials works as intended", {
  expect_true(check_trials(69)) #non negative integer input
  expect_error(check_trials(-1)) #error for negative integer input
  expect_error(check_trials(0.5)) #error for non-integer input
  expect_length(check_trials(10),1) #expect length 1 result
})

test_that("check_success works as intended", {
  expect_true(check_success(2,5)) #success less than trials
  expect_true(check_success(c(5),5)) #success same as trials
  expect_error(check_success(5,2)) #expect error for more success than trials
  expect_error(check_success(-5,-2)) #expect error for negative integer input
})

