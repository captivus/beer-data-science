
# get a vector of all the unique levels of whatever ingredient


get_ingredient_levels <- function(df, ing_name) {
  ing_levels <- vector()
  ing_cols <- df[, grepl(paste0(ing_name, "_name_"), names(df)) == TRUE]     # get a pared df of just columns that contain <ingredient>_name_
  
  for (col_num in 1:ncol(ing_cols)) {
    this_col_levels <- levels(ing_cols[, col_num])
    ing_levels <- c(ing_levels, this_col_levels)
  }
  
  unique_ing_levels <- unique(ing_levels)
  return(unique_ing_levels)
}

all_hops_levels <- get_ingredient_levels(beer_necessities, "hops")
all_malt_levels <- get_ingredient_levels(beer_necessities, "malt")


