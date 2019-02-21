domino_matrix <- data.frame(
  X0 = c("\uD83C\uDC31", "\uD83C\uDC32", "\uD83C\uDC33", "\uD83C\uDC34",
         "\uD83C\uDC35", "\uD83C\uDC36", "\uD83C\uDC37"),
  X1 = c("\uD83C\uDC38", "\uD83C\uDC39", "\uD83C\uDC3A", "\uD83C\uDC3B",
         "\uD83C\uDC3C", "\uD83C\uDC3D", "\uD83C\uDC3E"),
  X2 = c("\uD83C\uDC3F", "\uD83C\uDC40", "\uD83C\uDC41", "\uD83C\uDC42",
         "\uD83C\uDC43", "\uD83C\uDC44", "\uD83C\uDC45"),
  X3 = c("\uD83C\uDC46", "\uD83C\uDC47", "\uD83C\uDC48", "\uD83C\uDC49",
         "\uD83C\uDC4A", "\uD83C\uDC4B", "\uD83C\uDC4C"),
  X4 = c("\uD83C\uDC4D", "\uD83C\uDC4E", "\uD83C\uDC4F", "\uD83C\uDC50",
         "\uD83C\uDC51", "\uD83C\uDC52", "\uD83C\uDC53"),
  X5 = c("\uD83C\uDC54", "\uD83C\uDC55", "\uD83C\uDC56", "\uD83C\uDC57",
         "\uD83C\uDC58", "\uD83C\uDC59", "\uD83C\uDC5A"),
  X6 = c("\uD83C\uDC5B", "\uD83C\uDC5C", "\uD83C\uDC5D", "\uD83C\uDC5E",
         "\uD83C\uDC5F", "\uD83C\uDC60", "\uD83C\uDC61")
) %>% t

domino_matrix2 <- data.frame(
  X0 = c("\uD83C\uDC63", "\uD83C\uDC64", "\uD83C\uDC65", "\uD83C\uDC66",
         "\uD83C\uDC67", "\uD83C\uDC68", "\uD83C\uDC69"),
  X1 = c("\uD83C\uDC6A", "\uD83C\uDC6B", "\uD83C\uDC6C", "\uD83C\uDC6D",
         "\uD83C\uDC6E", "\uD83C\uDC6F", "\uD83C\uDC70"),
  X2 = c("\uD83C\uDC71", "\uD83C\uDC72", "\uD83C\uDC73", "\uD83C\uDC74",
         "\uD83C\uDC75", "\uD83C\uDC76", "\uD83C\uDC77"),
  X3 = c("\uD83C\uDC78", "\uD83C\uDC79", "\uD83C\uDC7A", "\uD83C\uDC7B",
         "\uD83C\uDC7C", "\uD83C\uDC7D", "\uD83C\uDC7E"),
  X4 = c("\uD83C\uDC7F", "\uD83C\uDC80", "\uD83C\uDC81", "\uD83C\uDC82",
         "\uD83C\uDC83", "\uD83C\uDC84", "\uD83C\uDC85"),
  X5 = c("\uD83C\uDC86", "\uD83C\uDC87", "\uD83C\uDC88", "\uD83C\uDC89",
         "\uD83C\uDC8A", "\uD83C\uDC8B", "\uD83C\uDC8C"),
  X6 = c("\uD83C\uDC8D", "\uD83C\uDC8E", "\uD83C\uDC8F", "\uD83C\uDC90",
         "\uD83C\uDC91", "\uD83C\uDC92", "\uD83C\uDC93")
) %>% t

#' domino pieces
#'
#' create Unicode representation of domino pieces and export to HTML.
#'
#' @rdname domino
#'
#' @param first the first number to appear in the domino. Valid values:
#'   0, 1, ..., 6
#' @param second the second number to appear in the domino. Valid values:
#'   0, 1, ..., 6
#' @param horizontal whether to use horizontal or vertical alignment
#' @examples
#' domino_html(5, 6)
#' domino_html(2, 0, horizontal = FALSE)
#' @export
domino_unicode <- function(first = 0:6, second = 0:6, horizontal = TRUE) {
  first <- first[1]
  second <- second[1]
  if (horizontal)
    domino_matrix[first + 1, second + 1] %>% as.character()
  else
    domino_matrix2[first + 1, second + 1] %>% as.character()
}

#' @rdname domino
#' @inheritParams unicode_html
#' @export
domino_html <- function(first = 0:6, second = 0:6, horizontal = TRUE,
                        size = 172) {
  domino_unicode(first, second, horizontal) %>% unicode_html(size)
}
