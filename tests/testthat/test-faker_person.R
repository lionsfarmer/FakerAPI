test_that("faker_person() creates fake data about people", {
  expect_equal(faker_person("male", quantity = 5, seed=1),
               tibble::tibble(firstname = c("Kellen", "Rafael", "Winston", "Johnnie", "Elwyn"),
                              lastname = c("Adams", "Fadel", "Hayes", "Jenkins", "Mueller"),
                              email = c("wziemann@hotmail.com", "celia68@bosco.biz","jackeline78@gmail.com", "kelley54@gmail.com", "jnitzsche@gmail.com" ),
                              gender = rep("male",5)))
})
