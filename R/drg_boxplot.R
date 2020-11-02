#' DRG make box plot
#'
#' @param df
#' @param vary
#'
#' @return boxplot
#' @export
#'
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 geom_boxplot
#' @importFrom ggplot2 stat_boxplot
#' @importFrom dplyr rowwise
#'
#' @examples
drg_boxplot <- function(df, vary){
  df$"DRG_Code" <- substr(df$"DRG Definition", start = 0, stop = 3)
  ggplot(data = df, aes(x = DRG_Code, y = get(vary))) +
    geom_boxplot(outlier.colour='black',outlier.shape=16,outlier.size=0.3,notch=FALSE) +
    stat_boxplot(geom = "errorbar") +
    ggtitle(paste(vary,"by DRG code")) +
    xlab("DRG code") +
    ylab(vary) +
    theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1, size = 6))
}
