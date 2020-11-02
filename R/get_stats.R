#' DRG compute statistics
#'
#' @param df
#' @param func
#'
#' @return statistics
#' @export
#'
#'
#' @examples
get_stats <- function(df, func){
  df$"DRG_Code" <- substr(df$"DRG Definition", start = 0, stop = 3)
  aggregate(x = df$"Average Medicare Payments",
            by = list(df$"DRG_Code"),
            FUN = func)
  #as.numeric(df$"Average Medicare Payments") %>% func()
}
