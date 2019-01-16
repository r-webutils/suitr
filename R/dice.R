#' create six sided dice
#'
#' @param number the number that should appear on the die
#' @examples
#' dice_unicode(6)
#' dice_html(4)
#'
#' 1:6 %>% lapply(dice_html) %>% span() %>% browsable()
#' @rdname misc_games
#' @export
dice_unicode <- function(number = 1:6) {
  number <- number[1]
  stopifnot(number %in% 1:6)
  switch(
    number,
    `1` = "\u2680",
    `2` = "\u2681",
    `3` = "\u2682",
    `4` = "\u2683",
    `5` = "\u2684",
    `6` = "\u2685"
  )
}

#' @rdname misc_games
#' @inheritParams unicode_html
#' @export
dice_html <- function(number = 1:6, size = 172) {
  number %>%
    dice_unicode() %>%
    unicode_html(size)
}
