site11_run02_tmp <- read.table("~/Documents/run02/site11graph.out", quote="\"")
site11_run02_new = data.frame(site11_run02_tmp$V1, site11_run02_tmp$V2, site11_run02_tmp$V3, site11_run02_tmp$V5)
names(site11_run02_new) <- c("id", "iter", "tstep", "state")

library(epicalc)

#break the run down by iteration

run02_iter0_whole = site11_run02_new[site11_run02_new$iter == 0,]
run02_iter1_whole = site11_run02_new[site11_run02_new$iter == 1,]
run02_iter2_whole = site11_run02_new[site11_run02_new$iter == 2,]
run02_iter3_whole = site11_run02_new[site11_run02_new$iter == 3,]

#eliminate state=0 values
run02_iter0 = run02_iter0_whole[run02_iter0_whole$state == 1,]
run02_iter1 = run02_iter1_whole[run02_iter1_whole$state == 1,]
run02_iter2 = run02_iter2_whole[run02_iter2_whole$state == 1,]
run02_iter3 = run02_iter3_whole[run02_iter3_whole$state == 1,]

#make a table of the tstep value and its frequency in the data frame
run02_iter0_table = table(run02_iter0$tstep)
run02_iter1_table = table(run02_iter1$tstep)

#plot the table
plot(run02_iter0_table, type="o", col="red")
lines(run02_iter1_table, type="o", col="blue")

####################################################

#find an average line for all 50 of the iterations in the run

library(ggplot2)

site11_run02_whole = site11_run02_new[site11_run02_new$state == 1,]

http://wiki.stdout.org/rcookbook/Graphs/Plotting%20means%20and%20error%20bars%20%28ggplot2%29/#Helper%20functions

summarySEwithin <- function(data=NULL, measurevar, betweenvars=NULL, withinvars=NULL,
                            idvar=NULL, na.rm=FALSE, conf.interval=.95, .drop=TRUE) {
  
  # Ensure that the betweenvars and withinvars are factors
  factorvars <- sapply(data[, c(betweenvars, withinvars), drop=FALSE], FUN=is.factor)
  if (!all(factorvars)) {
    nonfactorvars <- names(factorvars)[!factorvars]
    message("Automatically converting the following non-factors to factors: ",
            paste(nonfactorvars, collapse = ", "))
    data[nonfactorvars] <- lapply(data[nonfactorvars], factor)
  }
  
  # Norm each subject's data    
  data <- normDataWithin(data, idvar, measurevar, betweenvars, na.rm, .drop=.drop)
  
  # This is the name of the new column
  measureNormedVar <- paste(measurevar, "Normed", sep="")
  
  # Replace the original data column with the normed one
  data[,measurevar] <- data[,measureNormedVar]
  
  # Collapse the normed data - now we can treat between and within vars the same
  datac <- summarySE(data, measurevar, groupvars=c(betweenvars, withinvars), na.rm=na.rm,
                     conf.interval=conf.interval, .drop=.drop)
  
  # Apply correction from Morey (2008) to the standard error and confidence interval
  #  Get the product of the number of conditions of within-S variables
  nWithinGroups    <- prod(sapply(datac[,withinvars, drop=FALSE], FUN=nlevels))
  correctionFactor <- sqrt( nWithinGroups / (nWithinGroups-1) )
  
  # Apply the correction factor
  datac$sd <- datac$sd * correctionFactor
  datac$se <- datac$se * correctionFactor
  datac$ci <- datac$ci * correctionFactor
  
  return(datac)
}


dfc <- summarySE(run02_iter0_whole, measurevar="tstep")



test1 = survfit(Surv(run02.iter0$tstep, ) ~1)
