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
#' str(faker_person("male"))
faker_person <- function(gender = NULL, birthday_start = NULL, birthday_end = NULL, quantity = 1, locale = "en_US", seed = NULL) {
  faker(
    "persons",
    gender = gender,
    birthday_start = birthday_start,
    birthday_end = birthday_end,
    quantity = quantity,
    locale = locale,
    seed = seed
  )
}
