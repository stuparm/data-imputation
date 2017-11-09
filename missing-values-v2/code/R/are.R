are1 <- function( full, imp, mis ) {
    
  for (col in c("age","sex","bmi","blood_pressure","s1","s2","s3","s4","s5","s6")) {
	
	max_full <- max(full[,col])
	max_imp  <- max(imp[,col])
	
	min_full <- min(full[,col])
	min_imp  <- min(imp[,col])
	
	max <- max(max_full, max_imp)
	min <- min(min_full, min_imp)
	
	mis_col <- mis[,col]
	ind <- which(is.na(mis_col), arr.ind = TRUE)
	
	imp_values <- imp[ind,col]
	
	full_values <- full[ind,col]
	
	relative <- abs(imp_values - full_values)/(max-min)
	n <- length(relative)
	cat(n)
	are <- sum(relative)/n
	
	cat(col,"\t\t", are, "\n")

  }

}