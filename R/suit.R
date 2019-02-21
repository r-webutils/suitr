#' Card suits
#'
#' Functions that extract suit symbols and suit colors from a given suit
#'
#' @param suit one of the suits listed in `list_suits()`
#' @param four_color should a four color deck be applied. This means that each
#'   suit will have it's own color (black, red, blue and green). Otherwise, use
#'   two colors (black and red).
#' @param fill whether to use a filled suit symbol like `BLACK SPADE SUIT` or an
#'   unfilled one like `WHITE SPADE SUIT`
#' @inheritParams unicode_html
#'
#' @examples
#' # show all valid suits
#' suit_list()
#'
#' # determine matching colors for the suit
#' suit_color("d")
#' suit_color("d", four_color = FALSE)
#'
#' # show suits either in the console or as HTML
#' cat(suit_unicode("c"), "\n")
#' suit_html("c")
#' suit_html("c", fill = FALSE)
#'
#' # iterate over several suits for styling
#' suit_list() %>% sapply(suit_style) %>% cat("\n")
#' suit_list() %>% lapply(suit_html) %>% span() %>% browsable()
#' suit_list() %>% lapply(suit_html, fill = FALSE) %>% span() %>% browsable()
#' @rdname suit
#' @export
suit_list <- function() {
  c("s", "h", "c", "d")
}

#' @rdname suit
#' @export
suit_unicode <- function(suit = suit_list(), fill = TRUE) {
  suit <- match.arg(suit)
  if (fill)
    switch(suit, h = "\u2665", c = "\u2663", d = "\u2666", s = "\u2660")
  else
    switch(suit, h = "\u2661", c = "\u2667", d = "\u2662", s = "\u2664")
}

#' @rdname suit
#' @export
suit_color <- function(suit = suit_list(), four_color = TRUE) {
  suit <- match.arg(suit)
  if (four_color)
    switch(suit, h = "red", c = "green", d = "blue", s = "black")
  else
    switch(suit, h = "red", d = "red", "black")
}

#' @rdname suit
#' @export
suit_style <- function(suit, four_color = TRUE) {
  requireNamespace("crayon")
  crayon::style(suit_unicode(suit), suit_color(suit, four_color))
}

#' @rdname suit
#' @export
suit_html <- function(suit = suit_list(), size = 172, four_color = TRUE,
                      fill = TRUE) {
  suit <- match.arg(suit)
  unicode_html(
    suit_unicode(suit, fill), size,
    style = paste0("color:", suit_color(suit, four_color))
  )
}
