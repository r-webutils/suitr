#' convert a Unicode string into browsable html
#'
#' @param x a string to be wrapped
#' @param size the font-size to use
#' @param style a sting appended to the style attribute of the resulting `span`.
#' @importFrom htmltools span browsable HTML
#' @export
unicode_html <- function(x, size = 172, style = "") {
  htmltools::span(x, style = paste0("font-size: ", size, "px;", style)) %>%
    browsable()
}
