#' draughts pieces
#'
#' Functions to create Unicode draughts pieces and export them
#' to HTML
#'
#' @examples
#' span(draughts_html("white", "man"), draughts_html("white", "king"),
#'      draughts_html("black", "man"), draughts_html("black", "king")) %>%
#'   browsable()
#'
#' @param color A color to be used. Black or white
#' @param status A status of the checker. Use `man` for a single
#'   checker and `king`` for a double checker
#'
#' @rdname draughts
#' @export
draughts_unicode <- function(color = c("white", "black"),
                             status = c("man", "king")) {
  color <- match.arg(color)
  status <- match.arg(status)
  if (color == "white")
    switch(status, man = "\u26c0", king = "\u26c1")
  else
    switch(status, man = "\u26c2", king = "\u26c3")
}

#' @inheritParams unicode_html
#' @rdname draughts
#' @export
draughts_html <- function(color = c("white", "black"),
                          status = c("man", "king"), size = 172) {
  draughts_unicode(color, status) %>% unicode_html(size)
}
