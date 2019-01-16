#' @rdname card
#' @export
card_unicode <- function(card = card_list()) {
  card <- match.arg(card)
  switch(
    card,
    As = "\uD83C\uDCA1",
    Ah = "\uD83C\uDCB1",
    Ad = "\uD83C\uDCC1",
    Ac = "\uD83C\uDCD1",
    #####
    Ks = "\uD83C\uDCAE",
    Kh = "\uD83C\uDCBE",
    Kd = "\uD83C\uDCCE",
    Kc = "\uD83C\uDCDE",
    #####
    Qs = "\uD83C\uDCAD",
    Qh = "\uD83C\uDCBD",
    Qd = "\uD83C\uDCCD",
    Qc = "\uD83C\uDCDD",
    ######
    Js = "\uD83C\uDCAB",
    Jh = "\uD83C\uDCBB",
    Jd = "\uD83C\uDCCB",
    Jc = "\uD83C\uDCDB",
    ######
    Ts = "\uD83C\uDCAA",
    Th = "\uD83C\uDCBA",
    Td = "\uD83C\uDCCA",
    Tc = "\uD83C\uDCDA",
    ######
    `9s` = "\uD83C\uDCA9",
    `9h` = "\uD83C\uDCB9",
    `9d` = "\uD83C\uDCC9",
    `9c` = "\uD83C\uDCD9",
    ######
    `8s` = "\uD83C\uDCA8",
    `8h` = "\uD83C\uDCB8",
    `8d` = "\uD83C\uDCC8",
    `8c` = "\uD83C\uDCD8",
    ######
    `7s` = "\uD83C\uDCA7",
    `7h` = "\uD83C\uDCB7",
    `7d` = "\uD83C\uDCC7",
    `7c` = "\uD83C\uDCD7",
    #######
    `6s` = "\uD83C\uDCA6",
    `6h` = "\uD83C\uDCB6",
    `6d` = "\uD83C\uDCC6",
    `6c` = "\uD83C\uDCD6",
    ######
    `5s` = "\uD83C\uDCA5",
    `5h` = "\uD83C\uDCB5",
    `5d` = "\uD83C\uDCC5",
    `5c` = "\uD83C\uDCD5",
    ######
    `4s` = "\uD83C\uDCA4",
    `4h` = "\uD83C\uDCB4",
    `4d` = "\uD83C\uDCC4",
    `4c` = "\uD83C\uDCD4",
    ######
    `3s` = "\uD83C\uDCA3",
    `3h` = "\uD83C\uDCB3",
    `3d` = "\uD83C\uDCC3",
    `3c` = "\uD83C\uDCD3",
    ######
    `2s` = "\uD83C\uDCA2",
    `2h` = "\uD83C\uDCB2",
    `2d` = "\uD83C\uDCC2",
    `2c` = "\uD83C\uDCD2"
  )
}
