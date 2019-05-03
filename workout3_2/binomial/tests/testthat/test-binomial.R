library(testthat)

context("test binomial")

test_that("bin_choose works as intended", {
  expect_error(bin_choose(2,5))
  expect_equal(bin_choose(5,4),5)
  expect_error(bin_choose(-5,1))
  expect_length(bin_choose(5, 1:3), 3)
})

test_that("bin_probability works as intended", {
  expect_error(bin_probability(10,10,10))
  expect_error(bin_probability(10,2,1))
})

test_that("bin_distribution works as intended", {
  expect_error(bin_distribution(1:5,4,0.3))
  expect_error(bin_distribution(1:3,-2,0.5))
})

test_that("bin_cumulative works as intended", {
  expect_error(bin_cumulative(1:4,-5,0.2))
  expect_error(bin_cumulative(1:5,6,2))
})
