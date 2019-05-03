context("test aux for binomial")

test_that("aux_mean works as intended", {
  expect_equal(aux_mean(10,0.3),3) #regular use
  expect_length(aux_mean(10,0.5),1) #argument of length 1
})

test_that("aux_variance works as intended", {
  expect_equal(aux_variance(10,0.3), 2.1) #example use
  expect_length(aux_variance(10,0.5),1) #argument of length 1
})

test_that("aux_mode works as intended", {
  expect_equal(aux_mode(10,0.3),3) #example use
  expect_length(aux_mode(10,0.3),1) #argument length 1
})

test_that("aux_skewness works as intended", {
  expect_type(aux_skewness(10,0.3), 'double') #should be decimal following examples
  expect_length(aux_skewness(10,0.3), 1) #argument of length 1
})

test_that("aux_kurtosis works as intended", {
  expect_type(aux_kurtosis(10,0.3), 'double') #should be decmical from examples
  expect_length(aux_kurtosis(10,0.5),1) #argument of length 1
})
