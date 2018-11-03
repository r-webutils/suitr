mahjong_mapping <- list(
  `east wind` = "\uD83C\uDC00",
  `south wind` = "\uD83C\uDC01",
  `west wind` = "\uD83C\uDC02",
  `north wind` = "\uD83C\uDC03",
  `red dragon` = "\uD83C\uDC04",
  `green dragon` = "\uD83C\uDC05",
  `white dragon` = "\uD83C\uDC06",
  `one of characters` = "\uD83C\uDC07",
  `two of characters` = "\uD83C\uDC08",
  `three of characters` = "\uD83C\uDC09",
  `four of characters` = "\uD83C\uDC0A",
  `five of characters` = "\uD83C\uDC0B",
  `six of characters` = "\uD83C\uDC0C",
  `seven of characters` = "\uD83C\uDC0D",
  `eight of characters` = "\uD83C\uDC0E",
  `nine of characters` = "\uD83C\uDC0F",
  `one of bamboos` = "\uD83C\uDC10",
  `two of bamboos` = "\uD83C\uDC11",
  `three of bamboos` = "\uD83C\uDC12",
  `four of bamboos` = "\uD83C\uDC13",
  `five of bamboos` = "\uD83C\uDC14",
  `six of bamboos` = "\uD83C\uDC15",
  `seven of bamboos` = "\uD83C\uDC16",
  `eight of bamboos` = "\uD83C\uDC17",
  `nine of bamboos` = "\uD83C\uDC18",
  `one of circles` = "\uD83C\uDC19",
  `two of circles` = "\uD83C\uDC1A",
  `three of circles` = "\uD83C\uDC1B",
  `four of circles` = "\uD83C\uDC1C",
  `five of circles` = "\uD83C\uDC1D",
  `six of circles` = "\uD83C\uDC1E",
  `seven of circles` = "\uD83C\uDC1F",
  `eight of circles` = "\uD83C\uDC20",
  `nine of circles` = "\uD83C\uDC21",
  `plum` = "\uD83C\uDC22",
  `orchid` = "\uD83C\uDC23",
  `bamboo` = "\uD83C\uDC24",
  `chrysanthemum` = "\uD83C\uDC25",
  `spring` = "\uD83C\uDC26",
  summer = "\uD83C\uDC27",
  autumn = "\uD83C\uDC28",
  winter = "\uD83C\uDC29",
  joker = "\uD83C\uDC2A"
)

#' mahjong tiles
#'
#' create unicode representations of mahjong tiles and export to HTML
#'
#' @rdname mahjong
#' @export
mahjong_list <- function() {
  names(mahjong_mapping)
}

#' @rdname mahjong
#' @param tile a mahjong tile. Valid values can be found via `mahjong_list()`
#' @examples
#' mahjong_html("autumn")
#' mahjong_html("bamboo", size = 400)
#'
#' mahjong_list() %>% lapply(mahjong_html, 100) %>% span() %>% browsable()
#' @export
mahjong_unicode <- function(tile = mahjong_list()) {
  tile <- match.arg(tile)
  mahjong_mapping[[tile]]
}

#' @rdname mahjong
#' @inheritParams unicode_html
#' @export
mahjong_html <- function(tile = mahjong_list(), size = 172) {
  mahjong_unicode(tile) %>% unicode_html(size)
}
