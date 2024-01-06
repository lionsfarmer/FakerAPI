test_that("faker() makes fake data", {
  expect_equal(faker("images", width=300, seed = 1)$data[[1]], list(title = "Soluta qui ipsam non ipsum.",
                                                description = "Est ducimus temporibus modi saepe architecto unde. Dicta eveniet exercitationem aut porro sed magni. Sit vitae voluptas sint non voluptates ut. Quos qui illo error nihil laborum vero.",
                                                url = "http://placeimg.com/300/480/any"))
}
)
