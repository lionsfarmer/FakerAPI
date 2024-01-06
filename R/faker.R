#' Title
#'
#' @param resource resorce to get from api
#' @param ... other params
#' @param quantity quantity of resrources to return
#' @param locale locale param for api
#' @param seed seed param for api
#'
#' @return list of status, api code, total num of resources, data
#' @export
#'
#' @examples
#' str(faker("images", width = 300))
faker <- function(resource, ..., quantity = 1, locale = "en_US", seed = NULL) {
  params <- list(
    ...,
    quantity = quantity,
    locale = locale,
    seed = seed
  )
  names(params) <- paste0("_", names(params))

  httr2::request("https://fakerapi.it/api/v1") |>
    httr2::req_url_path_append(resource) |>
    httr2::req_url_query(!!!params) |>
    httr2::req_user_agent("my_package_name (http://my.package.web.site)") |>
    httr2::req_perform() |>
    httr2::resp_body_json()
}
