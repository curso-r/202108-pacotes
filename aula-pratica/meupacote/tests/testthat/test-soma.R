test_that("soma funciona", {

  # Valores
  expect_equal(fun(2, 2), 4)
  expect_lte(fun(runif(1), runif(1)), 2)
  expect_gte(fun(runif(1), runif(1)), 0)

  # Metatestes
  expect_true(class(fun(2, 2)) == "numeric")
  expect_length(fun(1:10, 10:1), 10)

  # Saídas
  expect_error(fun("2", "2"), "non-numeric argument to binary operator")
  expect_output(fun(NA, NA), NA)

  # Snapshot
  expect_snapshot(fun(Inf, -Inf))
})
