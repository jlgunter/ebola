site11_run02_tmp <- read.table("~/Documents/run02/site11graph.out", quote="\"")
site11_run02_new = data.frame(site11_run02_tmp$V1, site11_run02_tmp$V2, site11_run02_tmp$V3, site11_run02_tmp$V5)
names(site11_run02_new) <- c("id", "iter", "tstep", "state")

library(epicalc)

#break the run down by iteration

run02_iter0_whole = site11_run02_new[site11_run02_new$iter == 0,]
run02_iter1_whole = site11_run02_new[site11_run02_new$iter == 1,]
run02_iter2_whole = site11_run02_new[site11_run02_new$iter == 2,]
run02_iter3_whole = site11_run02_new[site11_run02_new$iter == 3,]

run02_iter0 = run02_iter0_whole[run02_iter0_whole$state == 1,]
run02_iter1 = run02_iter1_whole[run02_iter1_whole$state == 1,]
run02_iter2 = run02_iter2_whole[run02_iter2_whole$state == 1,]
run02_iter3 = run02_iter3_whole[run02_iter3_whole$state == 1,]

run02_iter0_table = table(run02_iter0$tstep)
run02_iter1_table = table(run02_iter1$tstep)


plot(run02_iter0_table, type="o", col="red")
lines(run02_iter1_table, type="o", col="blue")

library(ggplot2)

site11_run02_whole = site11_run02_new[site11_run02_new$state == 1,]
dfc <- summarySE(run02_iter0_whole, measurevar="tstep", groupvars=c("iter", "")



test1 = survfit(Surv(run02.iter0$tstep, ) ~1)


test2 = survfit(Surv(run16.iter1$tstep, run16.iter1$state) ~1)
test3 = survfit(Surv(run16.iter2$tstep, run16.iter2$state) ~1)
test4 = survfit(Surv(run16.iter3$tstep, run16.iter3$state) ~1)
par(mfrow=c(2,2),oma=c(0,0,2,0))

plot(test1, main="Seed: Farmer org. leader", xlab="timestep", ylab="survival function")
plot(test2, main="Seed: Urban vendor", xlab="timestep", ylab="survival function")
plot(test3, main="Seed: Researcher", xlab="timestep", ylab="survival function")
plot(test4, main="Seed: Agro-vendor", xlab="timestep", ylab="survival function")

#overall title
title("Site 11, Run 16: Kaplan-Meier estimate with 95% confidence bounds", outer=TRUE)

#could do for whole iteration
test5 = survfit(Surv(site11.run16$tstep, site11.run16$state) ~1)
plot(test5)

#run 18: threshold 3, 5 seed nodes

names(run18) <- c("id", "iter", "tstep", "na", "state", "thresh")

#want each iteration separately

run18.iter0 = run18[run18$iter == 0,]
run18.iter1 = run18[run18$iter == 1,]
run18.iter2 = run18[run18$iter == 2,]

run18.test0 = survfit(Surv(run18.iter0$tstep, run18.iter0$state) ~1)
run18.test1 = survfit(Surv(run18.iter1$tstep, run18.iter1$state) ~1)
run18.test2 = survfit(Surv(run18.iter2$tstep, run18.iter2$state) ~1)
par(mfrow=c(2,2),oma=c(0,0,2,0))

plot(run18.test0, main="Seed: Farmer org. leader", xlab="timestep", ylab="survival function")
plot(run18.test1, main="Seed: Urban vendor", xlab="timestep", ylab="survival function")
plot(run18.test2, main="Seed: Extension", xlab="timestep", ylab="survival function")

#overall title
title("Site 11, Run 18: Kaplan-Meier estimate with 95% confidence bounds", outer=TRUE)

#run19

names(run19) <- c("id", "iter", "tstep", "na", "state", "thresh")

#want each iteration separately

run19.iter0 = run19[run19$iter == 0,]
run19.iter1 = run19[run19$iter == 1,]
run19.iter2 = run19[run19$iter == 2,]

run19.test0 = survfit(Surv(run19.iter0$tstep, run19.iter0$state) ~1)
run19.test1 = survfit(Surv(run19.iter1$tstep, run19.iter1$state) ~1)
run19.test2 = survfit(Surv(run19.iter2$tstep, run19.iter2$state) ~1)
par(mfrow=c(2,2),oma=c(0,0,2,0))

plot(run19.test0, main="Seed: Farmer org. leader", xlab="timestep", ylab="survival function")
plot(run19.test1, main="Seed: Urban vendor", xlab="timestep", ylab="survival function")
plot(run19.test2, main="Seed: NGO", xlab="timestep", ylab="survival function")

#overall title
title("Site 11, Run 19: Kaplan-Meier estimate with 95% confidence bounds", outer=TRUE)

run18.whole = survfit(Surv(run18$tstep, run18$state) ~1)
run19.whole = survfit(Surv(run19$tstep, run19$state) ~1)
par(mfrow=c(2,1),oma=c(0,0,2,0))
plot(run18.whole, main="Seeds: Farmer org., Urban vendor, Extension", xlab="timestep", ylab="survival function")
plot(run19.whole, main="Seeds: Farmer org., Urban vendor, NGO", xlab="timestep", ylab="survival function")

title("Site 11, Runs 18-19: Kaplan-Meier estimate with 95% confidence bounds", outer=TRUE)
