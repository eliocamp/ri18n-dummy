#' Says hello
#'
#' Greets you personally and with emotion
#'
#' @param name string with the name of the person to greet.
#' @param emotion character with the emotion.
#'
#' @details
#' This will print to the console. The available emotions might depend on the
#' supported emotions in your machine.
#'
#' @returns
#' The input name, invisibly |>
#'
#' @examples
#' hello_world("CRAN", emotion = "disbelief")
#'
#' @export
hello_world <- function(name, emotion = c("excited", "questioning", "disbelief")) {
  emotion <- match.arg(emotion, c("excited", "questioning", "disbelief"))

  punctuations <- c(excited = "!", questioning = "?", disbelief = "\u203D")

  cat(paste0("Hello, ", name, punctuations[emotion]))
  return(invisible(name))
}
