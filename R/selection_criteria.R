# cobiclust R package Copyright INRAE 2024 Universite Paris-Saclay,
# AgroParisTech, INRAE, UMR MIA Paris-Saclay, 91120, Palaiseau, France

#' Calculate selection criteria.
#'
#' @param x The output of the cobiclust function.
#' @param K The number of groups in rows.
#' @param G The number of groups in columns.
#' @return A dataframe with 7 columns.
#' \describe{
#' \item{\code{vICL}}{the vICL selection criterion.}
#' \item{\code{BIC}}{the BIC selection criterion.}
#' \item{\code{penKG}}{the value of the BIC penalty.}
#' \item{\code{lb}}{the value of the lower bound of the log-likelihood.}
#' \item{\code{entZW}}{the value of the entropy of the latent variables Z and W.}
#' \item{\code{K}}{the number of groups in rows.}
#' \item{\code{G}}{the number of groups in columns.}
#' }
#' @export

selection_criteria <- function(x, K = NULL,
    G = NULL) {
    if (is.null(K)) {
        K <- x$K
    } else {
        assertthat::assert_that(K == x$K,
            msg = "K and x$K are not the same. Please choose K equal to x$K.")
    }
    if (is.null(G)) {
        G <- x$G
    } else {
        assertthat::assert_that(G == x$G,
            msg = "G and x$G are not the same. Please choose G equal to x$G.")
    }
    K <- x$K
    G <- x$G
    lb <- x$info$lb
    penKG <- penalty(x)
    BIC <- lb - penKG
    ent_ZW <- x$info$ent_ZW
    vICL <- BIC - ent_ZW
    return(cbind(vICL = vICL, BIC = BIC, penKG = penKG,
        lb = lb, entZW = ent_ZW, K = K, G = G))
}
