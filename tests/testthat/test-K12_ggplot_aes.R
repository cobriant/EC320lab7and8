K12 <- read_file("../../R/K12_ggplot_aes.R")

test_that("K12: Question 1", {
  skip_incomplete(K12, 1)
  p <- parse_eval(str_match_q(K12, 1))
  expect_equal(names(p$facet$params$facets), "year")
})

test_that("K12: Question 2", {
  skip_incomplete(K12, 2)
  p <- parse_eval(str_match_q(K12, 2))
  expect_equal(p$labels$colour, "continent")
})

test_that("K12: Question 3", {
  skip_incomplete(K12, 3)
  p <- parse_eval(str_match_q(K12, 3))
  expect_equal(p$labels$colour, "continent")
  expect_equal(p$labels$fill, "year")
})

test_that("K12: Question 4", {
  skip_incomplete(K12, 4)
  p <- parse_eval(str_match_q(K12, 4))
  expect_equal(p$labels$shape, "continent")
})

test_that("K12: Question 5", {
  skip_incomplete(K12, 5)
  p <- parse_eval(str_match_q(K12, 5))
  expect_equal(p$labels$colour, "continent")
  expect_equal(p$labels$size, "pop")
})
