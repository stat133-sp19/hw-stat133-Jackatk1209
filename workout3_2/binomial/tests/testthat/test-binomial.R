library(testthat)

context("test binomial")

text_that("bin_choose works as intended", {
  expect_error(bin_choose(2,5))
  expect_equal(bin_choose(5,4),5)
  expect_error(bin_choose(-5,1))
  expect_length(bin_choose(5, 1:3), 3)
})

test_that("bin_probability works as intended", {
  expect_error(bin_probability())
  expect_equal(bin_probability(2,5,0.5),0.3125)
  expect_error(bin_probability(10,2,1))
  expect_length(bin_probability(0:2, 5, 0.5), 3)
})

test_that("bin_distribution works as intended", {
  expect_error(bin_distribution(1:5,4,0.3))
  expect_length(bin_distribution(10,0.5),2)
  expect_error(bin_distribution(1:3,-2,0.5))
})

test_that("bin_cumulative works as intended", {
  expect_error(bin_cumulative(1:4,-5,0.2))
  expect_length(bin_cumulative(10, 0.5), 3)
  expect_error(bin_cumulative(1:5,6,2))
})