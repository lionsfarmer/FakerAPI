#' faker_person
#'
#' @param gender string of gender
#' @param birthday_start api param
#' @param birthday_end api param
#' @param quantity api param
#' @param locale api param
#' @param seed api param
#'
#' @return list of status, api code, total number resrouces returned, data
#' @export
#'
#' @examples
#' faker_person("male", quantity = 5)
faker_person <- function(gender = NULL, birthday_start = NULL, birthday_end = NULL, quantity = 1, locale = "en_US", seed = NULL) {
  if (!is.null(gender)) {
    gender <- match.arg(gender, c("male", "female"))
  }
  if (!is.null(birthday_start)) {
    if (!inherits(birthday_start, "Date")) {
      stop("`birthday_start` must be a date")
    }
    birthday_start <- format(birthday_start, "%Y-%m-%d")
  }
  if (!is.null(birthday_end)) {
    if (!inherits(birthday_end, "Date")) {
      stop("`birthday_end` must be a date")
    }
    birthday_end <- format(birthday_end, "%Y-%m-%d")
  }

  json <- faker(
    "persons",
    gender = gender,
    birthday_start = birthday_start,
    birthday_end = birthday_end,
    quantity = quantity,
    locale = locale,
    seed = seed
  )

  tibble::tibble(
    firstname = purrr::map_chr(json$data, "firstname"),
    lastname = purrr::map_chr(json$data, "lastname"),
    email = purrr::map_chr(json$data, "email"),
    gender = purrr::map_chr(json$data, "gender")
  )
}

