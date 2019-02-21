#' chess pieces
#'
#' Functions to create Unicode chess pieces and export them to HTML
#'
#' @examples
#' cat(chess_unicode("k"))
#'
#' chess_html("r")
#' chess_html("n", color = "black")
#'
#' white <- pieces_list() %>% lapply(chess_html, color = "white")
#' black <- pieces_list() %>% lapply(chess_html, color = "black")
#' span(div(white), div(black)) %>% browsable()
#' @rdname chess
#' @export
pieces_list <- function() {
  c("k", "q", "r", "b", "n", "p")
}

#' @rdname chess
#' @param piece a chess piece. Valid values can be found via `pieces_list()`
#' @param color the color of the chess pieces. Valid values are white and black
#' @export
chess_unicode <- function(piece = pieces_list(), color = c("white", "black")) {
  piece <- match.arg(piece)
  color <- match.arg(color)
  if (color == "black")
    switch(
      piece,
      k = "\u265A",
      q = "\u265B",
      r = "\u265C",
      b = "\u265D",
      n = "\u265E",
      p = "\u265F"
    )
  else
    switch(
      piece,
      k = "\u2654",
      q = "\u2655",
      r = "\u2656",
      b = "\u2657",
      n = "\u2658",
      p = "\u2659"
    )
}

#' @rdname chess
#' @inheritParams unicode_html
#' @export
chess_html <- function(piece = pieces_list(), color = c("white", "black"),
                       size = 172) {
  chess_unicode(piece, color) %>% unicode_html(size)
}
