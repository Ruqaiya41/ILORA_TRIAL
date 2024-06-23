# Create a script in R/ directory, e.g., R/data.R
#' My Data Description
#'
#' Detailed description of the data.
#'
#' @format A data frame with 1747 rows and 9 variables:
#' \describe{
#'   \item{Acc_Species_Name}{Text, Species names as standardized by using WFO* taxonomic backbone}
#'   \item{Class}{Text, Taxonomic information as retrieved from POWO#}
#'   \item{Order}{Text, Taxonomic information as retrieved from POWO#}
#'   \item{Family}{Text, Family names as standardized by using WorldFlora package in R}
#'   \item{Genus}{Text, Genus names as standardized by using WorldFlora package in R}
#'   \item{Species}{Text, Species names as standardized by using WorldFlora package in R}
#'   \item{Authority}{Text, Author names as standardized by using WorldFlora package in R}
#'   \item{Invasion.Status}{Categorical, Five categories – In (invasive), Nt (Naturalized), CA (Casual aliens), CG (Cryptogenic), N (Native)}
#'   \item{Source}{Text, Basis of determining invasion status – refer to ILORA_Sp.Categorization.Metadata below}
#'   \item{*WFO: World Flora Online;#POWO – Plants of the World Online}
#'   }
#' @source \url{link}
#'
"data_first"
