library(reshape)

site11_run01_tmp <- read.csv("~/Documents/run01/site11graph.out", header=T)
site11_run01_whole = colsplit(site11_run01_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_run01 = data.frame(site11_run01_whole$id, site11_run01_whole$iter, site11_run01_whole$tstep, site11_run01_whole$state)
names(site11_run01) = c('id', 'iter', 'tstep', 'state')
write.table(site11_run01,file="~/Documents/csv_output/site11_run01.csv",sep=",",row.names=F)

site11_run03_tmp <- read.csv("~/Documents/run03/site11graph.out", header=T)
site11_run03_whole = colsplit(site11_run03_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_run03 = data.frame(site11_run03_whole$id, site11_run03_whole$iter, site11_run03_whole$tstep, site11_run03_whole$state)
names(site11_run03) = c('id', 'iter', 'tstep', 'state')
write.table(site11_run03,file="~/Documents/csv_output/site11_run03.csv",sep=",",row.names=F)

site11_run04_tmp <- read.csv("~/Documents/run04/site11graph.out", header=T)
site11_run04_whole = colsplit(site11_run04_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_run04 = data.frame(site11_run04_whole$id, site11_run04_whole$iter, site11_run04_whole$tstep, site11_run04_whole$state)
names(site11_run04) = c('id', 'iter', 'tstep', 'state')
write.table(site11_run04,file="~/Documents/csv_output/site11_run04.csv",sep=",",row.names=F)

site11_run05_tmp <- read.csv("~/Documents/run05/site11graph.out", header=T)
site11_run05_whole = colsplit(site11_run05_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_run05 = data.frame(site11_run05_whole$id, site11_run05_whole$iter, site11_run05_whole$tstep, site11_run05_whole$state)
names(site11_run05) = c('id', 'iter', 'tstep', 'state')
write.table(site11_run05,file="~/Documents/csv_output/site11_run05.csv",sep=",",row.names=F)

site11_run06_tmp <- read.csv("~/Documents/run06/site11graph.out", header=T)
site11_run06_whole = colsplit(site11_run06_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_run06 = data.frame(site11_run06_whole$id, site11_run06_whole$iter, site11_run06_whole$tstep, site11_run06_whole$state)
names(site11_run06) = c('id', 'iter', 'tstep', 'state')
write.table(site11_run06,file="~/Documents/csv_output/site11_run06.csv",sep=",",row.names=F)

site11_run07_tmp <- read.csv("~/Documents/run07/site11graph.out", header=T)
site11_run07_whole = colsplit(site11_run07_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_run07 = data.frame(site11_run07_whole$id, site11_run07_whole$iter, site11_run07_whole$tstep, site11_run07_whole$state)
names(site11_run07) = c('id', 'iter', 'tstep', 'state')
write.table(site11_run07,file="~/Documents/csv_output/site11_run07.csv",sep=",",row.names=F)

site11_run08_tmp <- read.csv("~/Documents/run08/site11graph.out", header=T)
site11_run08_whole = colsplit(site11_run08_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_run08 = data.frame(site11_run08_whole$id, site11_run08_whole$iter, site11_run08_whole$tstep, site11_run08_whole$state)
names(site11_run08) = c('id', 'iter', 'tstep', 'state')
write.table(site11_run08,file="~/Documents/csv_output/site11_run08.csv",sep=",",row.names=F)

site11_run09_tmp <- read.csv("~/Documents/run09/site11graph.out", header=T)
site11_run09_whole = colsplit(site11_run09_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_run09 = data.frame(site11_run09_whole$id, site11_run09_whole$iter, site11_run09_whole$tstep, site11_run09_whole$state)
names(site11_run09) = c('id', 'iter', 'tstep', 'state')
write.table(site11_run09,file="~/Documents/csv_output/site11_run09.csv",sep=",",row.names=F)

site12_run01_tmp <- read.csv("~/Documents/run01.12/site12graph.out", header=T)
site12_run01_whole = colsplit(site12_run01_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_run01 = data.frame(site12_run01_whole$id, site12_run01_whole$iter, site12_run01_whole$tstep, site12_run01_whole$state)
names(site12_run01) = c('id', 'iter', 'tstep', 'state')
write.table(site12_run01,file="~/Documents/csv_output/site12_run01.csv",sep=",",row.names=F)

site12_run02_tmp <- read.csv("~/Documents/run02.12/site12graph.out", header=T)
site12_run02_whole = colsplit(site12_run02_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_run02 = data.frame(site12_run02_whole$id, site12_run02_whole$iter, site12_run02_whole$tstep, site12_run02_whole$state)
names(site12_run02) = c('id', 'iter', 'tstep', 'state')
write.table(site12_run02,file="~/Documents/csv_output/site12_run02.csv",sep=",",row.names=F)

site12_run03_tmp <- read.csv("~/Documents/run03.12/site12graph.out", header=T)
site12_run03_whole = colsplit(site12_run03_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_run03 = data.frame(site12_run03_whole$id, site12_run03_whole$iter, site12_run03_whole$tstep, site12_run03_whole$state)
names(site12_run03) = c('id', 'iter', 'tstep', 'state')
write.table(site12_run03,file="~/Documents/csv_output/site12_run03.csv",sep=",",row.names=F)

site12_run04_tmp <- read.csv("~/Documents/run04.12/site12graph.out", header=T)
site12_run04_whole = colsplit(site12_run04_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_run04 = data.frame(site12_run04_whole$id, site12_run04_whole$iter, site12_run04_whole$tstep, site12_run04_whole$state)
names(site12_run04) = c('id', 'iter', 'tstep', 'state')
write.table(site12_run04,file="~/Documents/csv_output/site12_run04.csv",sep=",",row.names=F)

site12_run05_tmp <- read.csv("~/Documents/run05.12/site12graph.out", header=T)
site12_run05_whole = colsplit(site12_run05_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_run05 = data.frame(site12_run05_whole$id, site12_run05_whole$iter, site12_run05_whole$tstep, site12_run05_whole$state)
names(site12_run05) = c('id', 'iter', 'tstep', 'state')
write.table(site12_run05,file="~/Documents/csv_output/site12_run05.csv",sep=",",row.names=F)

site11_new_run01_tmp <- read.csv("~/Documents/new_run01/site11graph.out", header=T)
site11_new_run01_whole = colsplit(site11_new_run01_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_new_run01 = data.frame(site11_new_run01_whole$id, site11_new_run01_whole$iter, site11_new_run01_whole$tstep, site11_new_run01_whole$state)
names(site11_new_run01) = c('id', 'iter', 'tstep', 'state')
write.table(site11_new_run01,file="~/Documents/csv_output/site11_new_run01.csv",sep=",",row.names=F)

site11_new_run02_tmp <- read.csv("~/Documents/new_run02/site11graph.out", header=T)
site11_new_run02_whole = colsplit(site11_new_run02_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_new_run02 = data.frame(site11_new_run02_whole$id, site11_new_run02_whole$iter, site11_new_run02_whole$tstep, site11_new_run02_whole$state)
names(site11_new_run02) = c('id', 'iter', 'tstep', 'state')
write.table(site11_new_run02,file="~/Documents/csv_output/site11_new_run02.csv",sep=",",row.names=F)

site11_new_run03_tmp <- read.csv("~/Documents/new_run03/site11graph.out", header=T)
site11_new_run03_whole = colsplit(site11_new_run03_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_new_run03 = data.frame(site11_new_run03_whole$id, site11_new_run03_whole$iter, site11_new_run03_whole$tstep, site11_new_run03_whole$state)
names(site11_new_run03) = c('id', 'iter', 'tstep', 'state')
write.table(site11_new_run03,file="~/Documents/csv_output/site11_new_run03.csv",sep=",",row.names=F)

site11_new_run04_tmp <- read.csv("~/Documents/new_run04/site11graph.out", header=T)
site11_new_run04_whole = colsplit(site11_new_run04_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_new_run04 = data.frame(site11_new_run04_whole$id, site11_new_run04_whole$iter, site11_new_run04_whole$tstep, site11_new_run04_whole$state)
names(site11_new_run04) = c('id', 'iter', 'tstep', 'state')
write.table(site11_new_run04,file="~/Documents/csv_output/site11_new_run04.csv",sep=",",row.names=F)

site11_run_max3_tmp <- read.csv("~/Documents/run_max3/site11graph.out", header=T)
site11_run_max3_whole = colsplit(site11_run_max3_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_run_max3 = data.frame(site11_run_max3_whole$id, site11_run_max3_whole$iter, site11_run_max3_whole$tstep, site11_run_max3_whole$state)
names(site11_run_max3) = c('id', 'iter', 'tstep', 'state')
write.table(site11_run_max3,file="~/Documents/csv_output/site11_run_max3.csv",sep=",",row.names=F)

site11_run02_max3_tmp <- read.csv("~/Documents/run02_max3/site11graph.out", header=T)
site11_run02_max3_whole = colsplit(site11_run02_max3_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_run02_max3 = data.frame(site11_run02_max3_whole$id, site11_run02_max3_whole$iter, site11_run02_max3_whole$tstep, site11_run02_max3_whole$state)
names(site11_run02_max3) = c('id', 'iter', 'tstep', 'state')
write.table(site11_run02_max3,file="~/Documents/csv_output/site11_run02_max3.csv",sep=",",row.names=F)

site11_run03_max3_tmp <- read.csv("~/Documents/run03_max3/site11graph.out", header=T)
site11_run03_max3_whole = colsplit(site11_run03_max3_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_run03_max3 = data.frame(site11_run03_max3_whole$id, site11_run03_max3_whole$iter, site11_run03_max3_whole$tstep, site11_run03_max3_whole$state)
names(site11_run03_max3) = c('id', 'iter', 'tstep', 'state')
write.table(site11_run03_max3,file="~/Documents/csv_output/site11_run03_max3.csv",sep=",",row.names=F)

site11_exp_run01_tmp <- read.csv("~/Documents/exp_run01/site11graph.out", header=T)
site11_exp_run01_whole = colsplit(site11_exp_run01_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_exp_run01 = data.frame(site11_exp_run01_whole$id, site11_exp_run01_whole$iter, site11_exp_run01_whole$tstep, site11_exp_run01_whole$state)
names(site11_exp_run01) = c('id', 'iter', 'tstep', 'state')
write.table(site11_exp_run01,file="~/Documents/csv_output/site11_exp_run01.csv",sep=",",row.names=F)

site11_exp_run04_tmp <- read.csv("~/Documents/exp_run04/site11graph.out", header=T)
site11_exp_run04_whole = colsplit(site11_exp_run04_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_exp_run04 = data.frame(site11_exp_run04_whole$id, site11_exp_run04_whole$iter, site11_exp_run04_whole$tstep, site11_exp_run04_whole$state)
names(site11_exp_run04) = c('id', 'iter', 'tstep', 'state')
write.table(site11_exp_run04,file="~/Documents/csv_output/site11_exp_run04.csv",sep=",",row.names=F)

site11_exp_run03_tmp <- read.csv("~/Documents/exp_run03/site11graph.out", header=T)
site11_exp_run03_whole = colsplit(site11_exp_run03_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_exp_run03 = data.frame(site11_exp_run03_whole$id, site11_exp_run03_whole$iter, site11_exp_run03_whole$tstep, site11_exp_run03_whole$state)
names(site11_exp_run03) = c('id', 'iter', 'tstep', 'state')
write.table(site11_exp_run03,file="~/Documents/csv_output/site11_exp_run03.csv",sep=",",row.names=F)

site11_exp_run05_tmp <- read.csv("~/Documents/exp_run05/site11graph.out", header=T)
site11_exp_run05_whole = colsplit(site11_exp_run05_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_exp_run05 = data.frame(site11_exp_run05_whole$id, site11_exp_run05_whole$iter, site11_exp_run05_whole$tstep, site11_exp_run05_whole$state)
names(site11_exp_run05) = c('id', 'iter', 'tstep', 'state')
write.table(site11_exp_run05,file="~/Documents/csv_output/site11_exp_run05.csv",sep=",",row.names=F)

site11_exp_run06_tmp <- read.csv("~/Documents/exp_run06/site11graph.out", header=T)
site11_exp_run06_whole = colsplit(site11_exp_run06_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_exp_run06 = data.frame(site11_exp_run06_whole$id, site11_exp_run06_whole$iter, site11_exp_run06_whole$tstep, site11_exp_run06_whole$state)
names(site11_exp_run06) = c('id', 'iter', 'tstep', 'state')
write.table(site11_exp_run06,file="~/Documents/csv_output/site11_exp_run06.csv",sep=",",row.names=F)

site11_exp_run07_tmp <- read.csv("~/Documents/exp_run07/site11graph.out", header=T)
site11_exp_run07_whole = colsplit(site11_exp_run07_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_exp_run07 = data.frame(site11_exp_run07_whole$id, site11_exp_run07_whole$iter, site11_exp_run07_whole$tstep, site11_exp_run07_whole$state)
names(site11_exp_run07) = c('id', 'iter', 'tstep', 'state')
write.table(site11_exp_run07,file="~/Documents/csv_output/site11_exp_run07.csv",sep=",",row.names=F)


site11_exp_run08_tmp <- read.csv("~/Documents/exp_run08/site11graph.out", header=T)
site11_exp_run08_whole = colsplit(site11_exp_run08_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_exp_run08 = data.frame(site11_exp_run08_whole$id, site11_exp_run08_whole$iter, site11_exp_run08_whole$tstep, site11_exp_run08_whole$state)
names(site11_exp_run08) = c('id', 'iter', 'tstep', 'state')
write.table(site11_exp_run08,file="~/Documents/csv_output/site11_exp_run08.csv",sep=",",row.names=F)

site11_exp_run09_tmp <- read.csv("~/Documents/run09/site11graph.out", header=T)
site11_exp_run09_whole = colsplit(site11_exp_run09_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_exp_run09 = data.frame(site11_exp_run09_whole$id, site11_exp_run09_whole$iter, site11_exp_run09_whole$tstep, site11_exp_run09_whole$state)
names(site11_exp_run09) = c('id', 'iter', 'tstep', 'state')
write.table(site11_exp_run09,file="~/Documents/csv_output/site11_exp_run09.csv",sep=",",row.names=F)

site11_wkly_mkt_vendor_tmp <- read.csv("~/Documents/seeds/wkly_mkt_vendor/site11graph.out", header=T)
site11_wkly_mkt_vendor_whole = colsplit(site11_wkly_mkt_vendor_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_wkly_mkt_vendor = data.frame(site11_wkly_mkt_vendor_whole$id, site11_wkly_mkt_vendor_whole$iter, site11_wkly_mkt_vendor_whole$tstep, site11_wkly_mkt_vendor_whole$state)
names(site11_wkly_mkt_vendor) = c('id', 'iter', 'tstep', 'state')
write.table(site11_wkly_mkt_vendor,file="~/Documents/csv_output/site11_wkly_mkt_vendor.csv",sep=",",row.names=F)


site11_urban_vendor_tmp <- read.csv("~/Documents/seeds/urban_vendor/site11graph.out", header=T)
site11_urban_vendor_whole = colsplit(site11_urban_vendor_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_urban_vendor = data.frame(site11_urban_vendor_whole$id, site11_urban_vendor_whole$iter, site11_urban_vendor_whole$tstep, site11_urban_vendor_whole$state)
names(site11_urban_vendor) = c('id', 'iter', 'tstep', 'state')
write.table(site11_urban_vendor,file="~/Documents/csv_output/site11_urban_vendor.csv",sep=",",row.names=F)


site11_agro_vet_tmp <- read.csv("~/Documents/seeds/agro_vet/site11graph.out", header=T)
site11_agro_vet_whole = colsplit(site11_agro_vet_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_agro_vet = data.frame(site11_agro_vet_whole$id, site11_agro_vet_whole$iter, site11_agro_vet_whole$tstep, site11_agro_vet_whole$state)
names(site11_agro_vet) = c('id', 'iter', 'tstep', 'state')
write.table(site11_agro_vet,file="~/Documents/csv_output/site11_agro_vet.csv",sep=",",row.names=F)


site11_extension_tmp <- read.csv("~/Documents/seeds/extension/site11graph.out", header=T)
site11_extension_whole = colsplit(site11_extension_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_extension = data.frame(site11_extension_whole$id, site11_extension_whole$iter, site11_extension_whole$tstep, site11_extension_whole$state)
names(site11_extension) = c('id', 'iter', 'tstep', 'state')
write.table(site11_extension,file="~/Documents/csv_output/site11_extension.csv",sep=",",row.names=F)


site11_ngo_tmp <- read.csv("~/Documents/seeds/ngo/site11graph.out", header=T)
site11_ngo_whole = colsplit(site11_ngo_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_ngo = data.frame(site11_ngo_whole$id, site11_ngo_whole$iter, site11_ngo_whole$tstep, site11_ngo_whole$state)
names(site11_ngo) = c('id', 'iter', 'tstep', 'state')
write.table(site11_ngo,file="~/Documents/csv_output/site11_ngo.csv",sep=",",row.names=F)


site11_farmer_tmp <- read.csv("~/Documents/seeds/farmer/site11graph.out", header=T)
site11_farmer_whole = colsplit(site11_farmer_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_farmer = data.frame(site11_farmer_whole$id, site11_farmer_whole$iter, site11_farmer_whole$tstep, site11_farmer_whole$state)
names(site11_farmer) = c('id', 'iter', 'tstep', 'state')
write.table(site11_farmer,file="~/Documents/csv_output/site11_farmer.csv",sep=",",row.names=F)

site11_farmer5_tmp <- read.csv("~/Documents/seeds/farmer5/site11graph.out", header=T)
site11_farmer5_whole = colsplit(site11_farmer5_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_farmer5 = data.frame(site11_farmer5_whole$id, site11_farmer5_whole$iter, site11_farmer5_whole$tstep, site11_farmer5_whole$state)
names(site11_farmer5) = c('id', 'iter', 'tstep', 'state')
write.table(site11_farmer5,file="~/Documents/csv_output/site11_farmer5.csv",sep=",",row.names=F)

site11_extension5_tmp <- read.csv("~/Documents/seeds/extension5/site11graph.out", header=T)
site11_extension5_whole = colsplit(site11_extension5_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_extension5 = data.frame(site11_extension5_whole$id, site11_extension5_whole$iter, site11_extension5_whole$tstep, site11_extension5_whole$state)
names(site11_extension5) = c('id', 'iter', 'tstep', 'state')
write.table(site11_extension5,file="~/Documents/csv_output/site11_extension5.csv",sep=",",row.names=F)


site11_vet_tmp <- read.csv("~/Documents/seeds/vet/site11graph.out", header=T)
site11_vet_whole = colsplit(site11_vet_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_vet = data.frame(site11_vet_whole$id, site11_vet_whole$iter, site11_vet_whole$tstep, site11_vet_whole$state)
names(site11_vet) = c('id', 'iter', 'tstep', 'state')
write.table(site11_vet,file="~/Documents/csv_output/site11_vet.csv",sep=",",row.names=F)


site11_farmer_org_leader_tmp <- read.csv("~/Documents/seeds/farmer_org_leader/site11graph.out", header=T)
site11_farmer_org_leader_whole = colsplit(site11_farmer_org_leader_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_farmer_org_leader = data.frame(site11_farmer_org_leader_whole$id, site11_farmer_org_leader_whole$iter, site11_farmer_org_leader_whole$tstep, site11_farmer_org_leader_whole$state)
names(site11_farmer_org_leader) = c('id', 'iter', 'tstep', 'state')
write.table(site11_farmer_org_leader,file="~/Documents/csv_output/site11_farmer_org_leader.csv",sep=",",row.names=F)

site11_extension_ngo_tmp <- read.csv("~/Documents/seeds/extension_ngo/site11graph.out", header=T)
site11_extension_ngo_whole = colsplit(site11_extension_ngo_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_extension_ngo = data.frame(site11_extension_ngo_whole$id, site11_extension_ngo_whole$iter, site11_extension_ngo_whole$tstep, site11_extension_ngo_whole$state)
names(site11_extension_ngo) = c('id', 'iter', 'tstep', 'state')
write.table(site11_extension_ngo,file="~/Documents/csv_output/site11_extension_ngo.csv",sep=",",row.names=F)

site11_urban_vendor1_tmp <- read.csv("~/Documents/seeds/urban_vendor1/site11graph.out", header=T)
site11_urban_vendor1_whole = colsplit(site11_urban_vendor1_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_urban_vendor1 = data.frame(site11_urban_vendor1_whole$id, site11_urban_vendor1_whole$iter, site11_urban_vendor1_whole$tstep, site11_urban_vendor1_whole$state)
names(site11_urban_vendor1) = c('id', 'iter', 'tstep', 'state')
write.table(site11_urban_vendor1,file="~/Documents/csv_output/site11_urban_vendor1.csv",sep=",",row.names=F)


site11_gvt_parastatal1_tmp <- read.csv("~/Documents/seeds/gvt_parastatal1/site11graph.out", header=T)
site11_gvt_parastatal1_whole = colsplit(site11_gvt_parastatal1_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_gvt_parastatal1 = data.frame(site11_gvt_parastatal1_whole$id, site11_gvt_parastatal1_whole$iter, site11_gvt_parastatal1_whole$tstep, site11_gvt_parastatal1_whole$state)
names(site11_gvt_parastatal1) = c('id', 'iter', 'tstep', 'state')
write.table(site11_gvt_parastatal1,file="~/Documents/csv_output/site11_gvt_parastatal1.csv",sep=",",row.names=F)


site11_extension_ngo_tmp <- read.csv("~/Documents/seeds/extension_ngo/site11graph.out", header=T)
site11_extension_ngo_whole = colsplit(site11_extension_ngo_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_extension_ngo = data.frame(site11_extension_ngo_whole$id, site11_extension_ngo_whole$iter, site11_extension_ngo_whole$tstep, site11_extension_ngo_whole$state)
names(site11_extension_ngo) = c('id', 'iter', 'tstep', 'state')
write.table(site11_extension_ngo,file="~/Documents/csv_output/site11_extension_ngo.csv",sep=",",row.names=F)


site11_extension_tstep4_tmp <- read.csv("~/Documents/seeds/extension_tstep4/site11graph.out", header=T)
site11_extension_tstep4_whole = colsplit(site11_extension_tstep4_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_extension_tstep4 = data.frame(site11_extension_tstep4_whole$id, site11_extension_tstep4_whole$iter, site11_extension_tstep4_whole$tstep, site11_extension_tstep4_whole$state)
names(site11_extension_tstep4) = c('id', 'iter', 'tstep', 'state')
write.table(site11_extension_tstep4,file="~/Documents/csv_output/site11_extension_tstep4.csv",sep=",",row.names=F)


site11_gvt_parastatal_tstep4_tmp <- read.csv("~/Documents/seeds/gvt_parastatal_tstep4/site11graph.out", header=T)
site11_gvt_parastatal_tstep4_whole = colsplit(site11_gvt_parastatal_tstep4_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_gvt_parastatal_tstep4 = data.frame(site11_gvt_parastatal_tstep4_whole$id, site11_gvt_parastatal_tstep4_whole$iter, site11_gvt_parastatal_tstep4_whole$tstep, site11_gvt_parastatal_tstep4_whole$state)
names(site11_gvt_parastatal_tstep4) = c('id', 'iter', 'tstep', 'state')
write.table(site11_gvt_parastatal_tstep4,file="~/Documents/csv_output/site11_gvt_parastatal_tstep4.csv",sep=",",row.names=F)

site11_ngo_tstep4_tmp <- read.csv("~/Documents/seeds/ngo_tstep4/site11graph.out", header=T)
site11_ngo_tstep4_whole = colsplit(site11_ngo_tstep4_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_ngo_tstep4 = data.frame(site11_ngo_tstep4_whole$id, site11_ngo_tstep4_whole$iter, site11_ngo_tstep4_whole$tstep, site11_ngo_tstep4_whole$state)
names(site11_ngo_tstep4) = c('id', 'iter', 'tstep', 'state')
write.table(site11_ngo_tstep4,file="~/Documents/csv_output/site11_ngo_tstep4.csv",sep=",",row.names=F)

site11_vet_tstep4_tmp <- read.csv("~/Documents/seeds/vet_tstep4/site11graph.out", header=T)
site11_vet_tstep4_whole = colsplit(site11_vet_tstep4_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_vet_tstep4 = data.frame(site11_vet_tstep4_whole$id, site11_vet_tstep4_whole$iter, site11_vet_tstep4_whole$tstep, site11_vet_tstep4_whole$state)
names(site11_vet_tstep4) = c('id', 'iter', 'tstep', 'state')
write.table(site11_vet_tstep4,file="~/Documents/csv_output/site11_vet_tstep4.csv",sep=",",row.names=F)

site11_wkly_mkt_vendor_tstep4_tmp <- read.csv("~/Documents/seeds/wkly_mkt_vendor_tstep4/site11graph.out", header=T)
site11_wkly_mkt_vendor_tstep4_whole = colsplit(site11_wkly_mkt_vendor_tstep4_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_wkly_mkt_vendor_tstep4 = data.frame(site11_wkly_mkt_vendor_tstep4_whole$id, site11_wkly_mkt_vendor_tstep4_whole$iter, site11_wkly_mkt_vendor_tstep4_whole$tstep, site11_wkly_mkt_vendor_tstep4_whole$state)
names(site11_wkly_mkt_vendor_tstep4) = c('id', 'iter', 'tstep', 'state')
write.table(site11_wkly_mkt_vendor_tstep4,file="~/Documents/csv_output/site11_wkly_mkt_vendor_tstep4.csv",sep=",",row.names=F)

site11_farmer_org_leader_tstep4_tmp <- read.csv("~/Documents/seeds/farmer_org_leader_tstep4/site11graph.out", header=T)
site11_farmer_org_leader_tstep4_whole = colsplit(site11_farmer_org_leader_tstep4_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_farmer_org_leader_tstep4 = data.frame(site11_farmer_org_leader_tstep4_whole$id, site11_farmer_org_leader_tstep4_whole$iter, site11_farmer_org_leader_tstep4_whole$tstep, site11_farmer_org_leader_tstep4_whole$state)
names(site11_farmer_org_leader_tstep4) = c('id', 'iter', 'tstep', 'state')
write.table(site11_farmer_org_leader_tstep4,file="~/Documents/csv_output/site11_farmer_org_leader_tstep4.csv",sep=",",row.names=F)

site11_agro_vet_tstep4_tmp <- read.csv("~/Documents/seeds/agro_vet_tstep4/site11graph.out", header=T)
site11_agro_vet_tstep4_whole = colsplit(site11_agro_vet_tstep4_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_agro_vet_tstep4 = data.frame(site11_agro_vet_tstep4_whole$id, site11_agro_vet_tstep4_whole$iter, site11_agro_vet_tstep4_whole$tstep, site11_agro_vet_tstep4_whole$state)
names(site11_agro_vet_tstep4) = c('id', 'iter', 'tstep', 'state')
write.table(site11_agro_vet_tstep4,file="~/Documents/csv_output/site11_agro_vet_tstep4.csv",sep=",",row.names=F)

site11_urban_vendor_tstep4_tmp <- read.csv("~/Documents/seeds/urban_vendor_tstep4/site11graph.out", header=T)
site11_urban_vendor_tstep4_whole = colsplit(site11_urban_vendor_tstep4_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_urban_vendor_tstep4 = data.frame(site11_urban_vendor_tstep4_whole$id, site11_urban_vendor_tstep4_whole$iter, site11_urban_vendor_tstep4_whole$tstep, site11_urban_vendor_tstep4_whole$state)
names(site11_urban_vendor_tstep4) = c('id', 'iter', 'tstep', 'state')
write.table(site11_urban_vendor_tstep4,file="~/Documents/csv_output/site11_urban_vendor_tstep4.csv",sep=",",row.names=F)


site11_thresh10_tmp <- read.csv("~/Documents/seeds/thresh10/site11graph.out", header=T)
site11_thresh10_whole = colsplit(site11_thresh10_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_thresh10 = data.frame(site11_thresh10_whole$id, site11_thresh10_whole$iter, site11_thresh10_whole$tstep, site11_thresh10_whole$state)
names(site11_thresh10) = c('id', 'iter', 'tstep', 'state')
write.table(site11_thresh10,file="~/Documents/csv_output/site11_thresh10.csv",sep=",",row.names=F)

site11_thresh7_tmp <- read.csv("~/Documents/seeds/thresh7/site11graph.out", header=T)
site11_thresh7_whole = colsplit(site11_thresh7_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_thresh7 = data.frame(site11_thresh7_whole$id, site11_thresh7_whole$iter, site11_thresh7_whole$tstep, site11_thresh7_whole$state)
names(site11_thresh7) = c('id', 'iter', 'tstep', 'state')
write.table(site11_thresh7,file="~/Documents/csv_output/site11_thresh7.csv",sep=",",row.names=F)


site11_thresh710_tmp <- read.csv("~/Documents/seeds/thresh710/site11graph.out", header=T)
site11_thresh710_whole = colsplit(site11_thresh710_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_thresh710 = data.frame(site11_thresh710_whole$id, site11_thresh710_whole$iter, site11_thresh710_whole$tstep, site11_thresh710_whole$state)
names(site11_thresh710) = c('id', 'iter', 'tstep', 'state')
write.table(site11_thresh710,file="~/Documents/csv_output/site11_thresh710.csv",sep=",",row.names=F)

site11_thresh7_2_tmp <- read.csv("~/Documents/seeds/thresh7_2/site11graph.out", header=T)
site11_thresh7_2_whole = colsplit(site11_thresh7_2_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_thresh7_2 = data.frame(site11_thresh7_2_whole$id, site11_thresh7_2_whole$iter, site11_thresh7_2_whole$tstep, site11_thresh7_2_whole$state)
names(site11_thresh7_2) = c('id', 'iter', 'tstep', 'state')
write.table(site11_thresh7_2,file="~/Documents/csv_output/site11_thresh7_2.csv",sep=",",row.names=F)


site11_thresh7_3_tmp <- read.csv("~/Documents/seeds/thresh7_3/site11graph.out", header=T)
site11_thresh7_3_whole = colsplit(site11_thresh7_3_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_thresh7_3 = data.frame(site11_thresh7_3_whole$id, site11_thresh7_3_whole$iter, site11_thresh7_3_whole$tstep, site11_thresh7_3_whole$state)
names(site11_thresh7_3) = c('id', 'iter', 'tstep', 'state')
write.table(site11_thresh7_3,file="~/Documents/csv_output/site11_thresh7_3.csv",sep=",",row.names=F)

site11_thresh1.7_tmp <- read.csv("~/Documents/seeds/thresh1.7/site11graph.out", header=T)
site11_thresh1.7_whole = colsplit(site11_thresh1.7_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_thresh1.7 = data.frame(site11_thresh1.7_whole$id, site11_thresh1.7_whole$iter, site11_thresh1.7_whole$tstep, site11_thresh1.7_whole$state)
names(site11_thresh1.7) = c('id', 'iter', 'tstep', 'state')
write.table(site11_thresh1.7,file="~/Documents/csv_output/site11_thresh1.7.csv",sep=",",row.names=F)


site11_thresh1.3_tmp <- read.csv("~/Documents/seeds/thresh1.3/site11graph.out", header=T)
site11_thresh1.3_whole = colsplit(site11_thresh1.3_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_thresh1.3 = data.frame(site11_thresh1.3_whole$id, site11_thresh1.3_whole$iter, site11_thresh1.3_whole$tstep, site11_thresh1.3_whole$state)
names(site11_thresh1.3) = c('id', 'iter', 'tstep', 'state')
write.table(site11_thresh1.3,file="~/Documents/csv_output/site11_thresh1.3.csv",sep=",",row.names=F)

site11_thresh3.5_tmp <- read.csv("~/Documents/seeds/thresh3.5/site11graph.out", header=T)
site11_thresh3.5_whole = colsplit(site11_thresh3.5_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_thresh3.5 = data.frame(site11_thresh3.5_whole$id, site11_thresh3.5_whole$iter, site11_thresh3.5_whole$tstep, site11_thresh3.5_whole$state)
names(site11_thresh3.5) = c('id', 'iter', 'tstep', 'state')
write.table(site11_thresh3.5,file="~/Documents/csv_output/site11_thresh3.5.csv",sep=",",row.names=F)


site11_thresh5.7_tmp <- read.csv("~/Documents/seeds/thresh5.7/site11graph.out", header=T)
site11_thresh5.7_whole = colsplit(site11_thresh5.7_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_thresh5.7 = data.frame(site11_thresh5.7_whole$id, site11_thresh5.7_whole$iter, site11_thresh5.7_whole$tstep, site11_thresh5.7_whole$state)
names(site11_thresh5.7) = c('id', 'iter', 'tstep', 'state')
write.table(site11_thresh5.7,file="~/Documents/csv_output/site11_thresh5.7.csv",sep=",",row.names=F)


site11_thresh5.7_2_tmp <- read.csv("~/Documents/seeds/thresh5.7_2/site11graph.out", header=T)
site11_thresh5.7_2_whole = colsplit(site11_thresh5.7_2_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_thresh5.7_2 = data.frame(site11_thresh5.7_2_whole$id, site11_thresh5.7_2_whole$iter, site11_thresh5.7_2_whole$tstep, site11_thresh5.7_2_whole$state)
names(site11_thresh5.7_2) = c('id', 'iter', 'tstep', 'state')
write.table(site11_thresh5.7_2,file="~/Documents/csv_output/site11_thresh5.7_2.csv",sep=",",row.names=F)


site11_thresh5.7_3_tmp <- read.csv("~/Documents/seeds/thresh5.7_3/site11graph.out", header=T)
site11_thresh5.7_3_whole = colsplit(site11_thresh5.7_3_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_thresh5.7_3 = data.frame(site11_thresh5.7_3_whole$id, site11_thresh5.7_3_whole$iter, site11_thresh5.7_3_whole$tstep, site11_thresh5.7_3_whole$state)
names(site11_thresh5.7_3) = c('id', 'iter', 'tstep', 'state')
write.table(site11_thresh5.7_3,file="~/Documents/csv_output/site11_thresh5.7_3.csv",sep=",",row.names=F)

site11_thresh5.7_4_tmp <- read.csv("~/Documents/seeds/thresh5.7_4/site11graph.out", header=T)
site11_thresh5.7_4_whole = colsplit(site11_thresh5.7_4_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_thresh5.7_4 = data.frame(site11_thresh5.7_4_whole$id, site11_thresh5.7_4_whole$iter, site11_thresh5.7_4_whole$tstep, site11_thresh5.7_4_whole$state)
names(site11_thresh5.7_4) = c('id', 'iter', 'tstep', 'state')
write.table(site11_thresh5.7_4,file="~/Documents/csv_output/site11_thresh5.7_4.csv",sep=",",row.names=F)

site11_thresh3.5_2_tmp <- read.csv("~/Documents/seeds/thresh3.5_2/site11graph.out", header=T)
site11_thresh3.5_2_whole = colsplit(site11_thresh3.5_2_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_thresh3.5_2 = data.frame(site11_thresh3.5_2_whole$id, site11_thresh3.5_2_whole$iter, site11_thresh3.5_2_whole$tstep, site11_thresh3.5_2_whole$state)
names(site11_thresh3.5_2) = c('id', 'iter', 'tstep', 'state')
write.table(site11_thresh3.5_2,file="~/Documents/csv_output/site11_thresh3.5_2.csv",sep=",",row.names=F)

site11_thresh1.7_2_tmp <- read.csv("~/Documents/seeds/thresh1.7_2/site11graph.out", header=T)
site11_thresh1.7_2_whole = colsplit(site11_thresh1.7_2_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_thresh1.7_2 = data.frame(site11_thresh1.7_2_whole$id, site11_thresh1.7_2_whole$iter, site11_thresh1.7_2_whole$tstep, site11_thresh1.7_2_whole$state)
names(site11_thresh1.7_2) = c('id', 'iter', 'tstep', 'state')
write.table(site11_thresh1.7_2,file="~/Documents/csv_output/site11_thresh1.7_2.csv",sep=",",row.names=F)


site11_thresh1.3_2_tmp <- read.csv("~/Documents/seeds/thresh1.3_2/site11graph.out", header=T)
site11_thresh1.3_2_whole = colsplit(site11_thresh1.3_2_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_thresh1.3_2 = data.frame(site11_thresh1.3_2_whole$id, site11_thresh1.3_2_whole$iter, site11_thresh1.3_2_whole$tstep, site11_thresh1.3_2_whole$state)
names(site11_thresh1.3_2) = c('id', 'iter', 'tstep', 'state')
write.table(site11_thresh1.3_2,file="~/Documents/csv_output/site11_thresh1.3_2.csv",sep=",",row.names=F)


site12_agro_vet_tmp <- read.csv("~/Documents/Site12/agro_vet/site12graph.out", header=T)
site12_agro_vet_whole = colsplit(site12_agro_vet_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_agro_vet = data.frame(site12_agro_vet_whole$id, site12_agro_vet_whole$iter, site12_agro_vet_whole$tstep, site12_agro_vet_whole$state)
names(site12_agro_vet) = c('id', 'iter', 'tstep', 'state')
write.table(site12_agro_vet,file="~/Documents/csv_output/site12_agro_vet.csv",sep=",",row.names=F)

site12_extension_tmp <- read.csv("~/Documents/Site12/extension/site12graph.out", header=T)
site12_extension_whole = colsplit(site12_extension_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_extension = data.frame(site12_extension_whole$id, site12_extension_whole$iter, site12_extension_whole$tstep, site12_extension_whole$state)
names(site12_extension) = c('id', 'iter', 'tstep', 'state')
write.table(site12_extension,file="~/Documents/csv_output/site12_extension.csv",sep=",",row.names=F)

site12_farmer_org_leader_tmp <- read.csv("~/Documents/Site12/farmer_org_leader/site12graph.out", header=T)
site12_farmer_org_leader_whole = colsplit(site12_farmer_org_leader_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_farmer_org_leader = data.frame(site12_farmer_org_leader_whole$id, site12_farmer_org_leader_whole$iter, site12_farmer_org_leader_whole$tstep, site12_farmer_org_leader_whole$state)
names(site12_farmer_org_leader) = c('id', 'iter', 'tstep', 'state')
write.table(site12_farmer_org_leader,file="~/Documents/csv_output/site12_farmer_org_leader.csv",sep=",",row.names=F)

site12_local_pol_tmp <- read.csv("~/Documents/Site12/local_pol/site12graph.out", header=T)
site12_local_pol_whole = colsplit(site12_local_pol_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_local_pol = data.frame(site12_local_pol_whole$id, site12_local_pol_whole$iter, site12_local_pol_whole$tstep, site12_local_pol_whole$state)
names(site12_local_pol) = c('id', 'iter', 'tstep', 'state')
write.table(site12_local_pol,file="~/Documents/csv_output/site12_local_pol.csv",sep=",",row.names=F)

site12_ngo_tmp <- read.csv("~/Documents/Site12/ngo/site12graph.out", header=T)
site12_ngo_whole = colsplit(site12_ngo_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_ngo = data.frame(site12_ngo_whole$id, site12_ngo_whole$iter, site12_ngo_whole$tstep, site12_ngo_whole$state)
names(site12_ngo) = c('id', 'iter', 'tstep', 'state')
write.table(site12_ngo,file="~/Documents/csv_output/site12_ngo.csv",sep=",",row.names=F)

site12_tractor_tmp <- read.csv("~/Documents/Site12/tractor_owner/site12graph.out", header=T)
site12_tractor_whole = colsplit(site12_tractor_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_tractor = data.frame(site12_tractor_whole$id, site12_tractor_whole$iter, site12_tractor_whole$tstep, site12_tractor_whole$state)
names(site12_tractor) = c('id', 'iter', 'tstep', 'state')
write.table(site12_tractor,file="~/Documents/csv_output/site12_tractor.csv",sep=",",row.names=F)

site12_urban_vendor_tmp <- read.csv("~/Documents/Site12/urban_vendor/site12graph.out", header=T)
site12_urban_vendor_whole = colsplit(site12_urban_vendor_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_urban_vendor = data.frame(site12_urban_vendor_whole$id, site12_urban_vendor_whole$iter, site12_urban_vendor_whole$tstep, site12_urban_vendor_whole$state)
names(site12_urban_vendor) = c('id', 'iter', 'tstep', 'state')
write.table(site12_urban_vendor,file="~/Documents/csv_output/site12_urban_vendor.csv",sep=",",row.names=F)

site12_vet_tmp <- read.csv("~/Documents/Site12/vet/site12graph.out", header=T)
site12_vet_whole = colsplit(site12_vet_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_vet = data.frame(site12_vet_whole$id, site12_vet_whole$iter, site12_vet_whole$tstep, site12_vet_whole$state)
names(site12_vet) = c('id', 'iter', 'tstep', 'state')
write.table(site12_vet,file="~/Documents/csv_output/site12_vet.csv",sep=",",row.names=F)

site12_wkly_mkt_vendor_tmp <- read.csv("~/Documents/Site12/wkly_mkt_vendor/site12graph.out", header=T)
site12_wkly_mkt_vendor_whole = colsplit(site12_wkly_mkt_vendor_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_wkly_mkt_vendor = data.frame(site12_wkly_mkt_vendor_whole$id, site12_wkly_mkt_vendor_whole$iter, site12_wkly_mkt_vendor_whole$tstep, site12_wkly_mkt_vendor_whole$state)
names(site12_wkly_mkt_vendor) = c('id', 'iter', 'tstep', 'state')
write.table(site12_wkly_mkt_vendor,file="~/Documents/csv_output/site12_wkly_mkt_vendor.csv",sep=",",row.names=F)


site13_agro_vet_tmp <- read.csv("~/Documents/Site13/agro_vet/site13graph.out", header=T)
site13_agro_vet_whole = colsplit(site13_agro_vet_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site13_agro_vet = data.frame(site13_agro_vet_whole$id, site13_agro_vet_whole$iter, site13_agro_vet_whole$tstep, site13_agro_vet_whole$state)
names(site13_agro_vet) = c('id', 'iter', 'tstep', 'state')
write.table(site13_agro_vet,file="~/Documents/csv_output/site13_agro_vet.csv",sep=",",row.names=F)

site13_extension_tmp <- read.csv("~/Documents/Site13/extension/site13graph.out", header=T)
site13_extension_whole = colsplit(site13_extension_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site13_extension = data.frame(site13_extension_whole$id, site13_extension_whole$iter, site13_extension_whole$tstep, site13_extension_whole$state)
names(site13_extension) = c('id', 'iter', 'tstep', 'state')
write.table(site13_extension,file="~/Documents/csv_output/site13_extension.csv",sep=",",row.names=F)

site13_farmer_org_leader_tmp <- read.csv("~/Documents/Site13/farmer_org_leader/site13graph.out", header=T)
site13_farmer_org_leader_whole = colsplit(site13_farmer_org_leader_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site13_farmer_org_leader = data.frame(site13_farmer_org_leader_whole$id, site13_farmer_org_leader_whole$iter, site13_farmer_org_leader_whole$tstep, site13_farmer_org_leader_whole$state)
names(site13_farmer_org_leader) = c('id', 'iter', 'tstep', 'state')
write.table(site13_farmer_org_leader,file="~/Documents/csv_output/site13_farmer_org_leader.csv",sep=",",row.names=F)

site13_local_pol_tmp <- read.csv("~/Documents/Site13/local_pol/site13graph.out", header=T)
site13_local_pol_whole = colsplit(site13_local_pol_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site13_local_pol = data.frame(site13_local_pol_whole$id, site13_local_pol_whole$iter, site13_local_pol_whole$tstep, site13_local_pol_whole$state)
names(site13_local_pol) = c('id', 'iter', 'tstep', 'state')
write.table(site13_local_pol,file="~/Documents/csv_output/site13_local_pol.csv",sep=",",row.names=F)

site13_ngo_tmp <- read.csv("~/Documents/Site13/ngo/site13graph.out", header=T)
site13_ngo_whole = colsplit(site13_ngo_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site13_ngo = data.frame(site13_ngo_whole$id, site13_ngo_whole$iter, site13_ngo_whole$tstep, site13_ngo_whole$state)
names(site13_ngo) = c('id', 'iter', 'tstep', 'state')
write.table(site13_ngo,file="~/Documents/csv_output/site13_ngo.csv",sep=",",row.names=F)

site13_urban_vendor_tmp <- read.csv("~/Documents/Site13/urban_vendor/site13graph.out", header=T)
site13_urban_vendor_whole = colsplit(site13_urban_vendor_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site13_urban_vendor = data.frame(site13_urban_vendor_whole$id, site13_urban_vendor_whole$iter, site13_urban_vendor_whole$tstep, site13_urban_vendor_whole$state)
names(site13_urban_vendor) = c('id', 'iter', 'tstep', 'state')
write.table(site13_urban_vendor,file="~/Documents/csv_output/site13_urban_vendor.csv",sep=",",row.names=F)

site13_vet_tmp <- read.csv("~/Documents/Site13/vet/site13graph.out", header=T)
site13_vet_whole = colsplit(site13_vet_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site13_vet = data.frame(site13_vet_whole$id, site13_vet_whole$iter, site13_vet_whole$tstep, site13_vet_whole$state)
names(site13_vet) = c('id', 'iter', 'tstep', 'state')
write.table(site13_vet,file="~/Documents/csv_output/site13_vet.csv",sep=",",row.names=F)

site13_wkly_mkt_vendor_tmp <- read.csv("~/Documents/Site13/wkly_mkt_vendor/site13graph.out", header=T)
site13_wkly_mkt_vendor_whole = colsplit(site13_wkly_mkt_vendor_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site13_wkly_mkt_vendor = data.frame(site13_wkly_mkt_vendor_whole$id, site13_wkly_mkt_vendor_whole$iter, site13_wkly_mkt_vendor_whole$tstep, site13_wkly_mkt_vendor_whole$state)
names(site13_wkly_mkt_vendor) = c('id', 'iter', 'tstep', 'state')
write.table(site13_wkly_mkt_vendor,file="~/Documents/csv_output/site13_wkly_mkt_vendor.csv",sep=",",row.names=F)

site13_ag_researcher_tmp <- read.csv("~/Documents/Site13/ag_researcher/site13graph.out", header=T)
site13_ag_researcher_whole = colsplit(site13_ag_researcher_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site13_ag_researcher = data.frame(site13_ag_researcher_whole$id, site13_ag_researcher_whole$iter, site13_ag_researcher_whole$tstep, site13_ag_researcher_whole$state)
names(site13_ag_researcher) = c('id', 'iter', 'tstep', 'state')
write.table(site13_ag_researcher,file="~/Documents/csv_output/site13_ag_researcher.csv",sep=",",row.names=F)


site23_agro_vet_whole = colsplit(site23_agro_vet_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site23_agro_vet = data.frame(site23_agro_vet_whole$id, site23_agro_vet_whole$iter, site23_agro_vet_whole$tstep, site23_agro_vet_whole$state)
names(site23_agro_vet) = c('id', 'iter', 'tstep', 'state')
write.table(site23_agro_vet,file="~/Documents/csv_output/site23_agro_vet.csv",sep=",",row.names=F)

site23_extension_tmp <- read.csv("~/Documents/Site23/extension/site23graph.out", header=T)
site23_extension_whole = colsplit(site23_extension_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site23_extension = data.frame(site23_extension_whole$id, site23_extension_whole$iter, site23_extension_whole$tstep, site23_extension_whole$state)
names(site23_extension) = c('id', 'iter', 'tstep', 'state')
write.table(site23_extension,file="~/Documents/csv_output/site23_extension.csv",sep=",",row.names=F)

site23_farmer_org_leader_tmp <- read.csv("~/Documents/Site23/farmer_org_leader/site23graph.out", header=T)
site23_farmer_org_leader_whole = colsplit(site23_farmer_org_leader_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site23_farmer_org_leader = data.frame(site23_farmer_org_leader_whole$id, site23_farmer_org_leader_whole$iter, site23_farmer_org_leader_whole$tstep, site23_farmer_org_leader_whole$state)
names(site23_farmer_org_leader) = c('id', 'iter', 'tstep', 'state')
write.table(site23_farmer_org_leader,file="~/Documents/csv_output/site23_farmer_org_leader.csv",sep=",",row.names=F)

site23_gvt_parastatal_tmp <- read.csv("~/Documents/Site23/gvt_parastatal/site23graph.out", header=T)
site23_gvt_parastatal_whole = colsplit(site23_gvt_parastatal_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site23_gvt_parastatal = data.frame(site23_gvt_parastatal_whole$id, site23_gvt_parastatal_whole$iter, site23_gvt_parastatal_whole$tstep, site23_gvt_parastatal_whole$state)
names(site23_gvt_parastatal) = c('id', 'iter', 'tstep', 'state')
write.table(site23_gvt_parastatal,file="~/Documents/csv_output/site23_gvt_parastatal.csv",sep=",",row.names=F)

site23_ngo_tmp <- read.csv("~/Documents/Site23/ngo/site23graph.out", header=T)
site23_ngo_whole = colsplit(site23_ngo_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site23_ngo = data.frame(site23_ngo_whole$id, site23_ngo_whole$iter, site23_ngo_whole$tstep, site23_ngo_whole$state)
names(site23_ngo) = c('id', 'iter', 'tstep', 'state')
write.table(site23_ngo,file="~/Documents/csv_output/site23_ngo.csv",sep=",",row.names=F)

site23_urban_vendor_tmp <- read.csv("~/Documents/Site23/urban_vendor/site23graph.out", header=T)
site23_urban_vendor_whole = colsplit(site23_urban_vendor_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site23_urban_vendor = data.frame(site23_urban_vendor_whole$id, site23_urban_vendor_whole$iter, site23_urban_vendor_whole$tstep, site23_urban_vendor_whole$state)
names(site23_urban_vendor) = c('id', 'iter', 'tstep', 'state')
write.table(site23_urban_vendor,file="~/Documents/csv_output/site23_urban_vendor.csv",sep=",",row.names=F)

site23_vet_tmp <- read.csv("~/Documents/Site23/vet/site23graph.out", header=T)
site23_vet_whole = colsplit(site23_vet_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site23_vet = data.frame(site23_vet_whole$id, site23_vet_whole$iter, site23_vet_whole$tstep, site23_vet_whole$state)
names(site23_vet) = c('id', 'iter', 'tstep', 'state')
write.table(site23_vet,file="~/Documents/csv_output/site23_vet.csv",sep=",",row.names=F)

site23_wkly_mkt_vendor_tmp <- read.csv("~/Documents/Site23/wkly_mkt_vendor/site23graph.out", header=T)
site23_wkly_mkt_vendor_whole = colsplit(site23_wkly_mkt_vendor_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site23_wkly_mkt_vendor = data.frame(site23_wkly_mkt_vendor_whole$id, site23_wkly_mkt_vendor_whole$iter, site23_wkly_mkt_vendor_whole$tstep, site23_wkly_mkt_vendor_whole$state)
names(site23_wkly_mkt_vendor) = c('id', 'iter', 'tstep', 'state')
write.table(site23_wkly_mkt_vendor,file="~/Documents/csv_output/site23_wkly_mkt_vendor.csv",sep=",",row.names=F)

site23_tractor_owner_tmp <- read.csv("~/Documents/Site23/tractor_owner/site23graph.out", header=T)
site23_tractor_owner_whole = colsplit(site23_tractor_owner_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site23_tractor_owner = data.frame(site23_tractor_owner_whole$id, site23_tractor_owner_whole$iter, site23_tractor_owner_whole$tstep, site23_tractor_owner_whole$state)
names(site23_tractor_owner) = c('id', 'iter', 'tstep', 'state')
write.table(site23_tractor_owner,file="~/Documents/csv_output/site23_tractor_owner.csv",sep=",",row.names=F)

site23_ngo3_tmp <- read.csv("~/Documents/threshranges/Site23/ngo/maxthresh3/site23graph.out", header=T)
site23_ngo3_whole = colsplit(site23_ngo3_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site23_ngo3 = data.frame(site23_ngo3_whole$id, site23_ngo3_whole$iter, site23_ngo3_whole$tstep, site23_ngo3_whole$state)
names(site23_ngo3) = c('id', 'iter', 'tstep', 'state')
write.table(site23_ngo3,file="~/Documents/csv_output/site23_ngo3.csv",sep=",",row.names=F)


site23_ngo5_tmp <- read.csv("~/Documents/threshranges/Site23/ngo/maxthresh5/site23graph.out", header=T)
site23_ngo5_whole = colsplit(site23_ngo5_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site23_ngo5 = data.frame(site23_ngo5_whole$id, site23_ngo5_whole$iter, site23_ngo5_whole$tstep, site23_ngo5_whole$state)
names(site23_ngo5) = c('id', 'iter', 'tstep', 'state')
write.table(site23_ngo5,file="~/Documents/csv_output/site23_ngo5.csv",sep=",",row.names=F)


site23_ngo7_tmp <- read.csv("~/Documents/threshranges/Site23/ngo/maxthresh7/site23graph.out", header=T)
site23_ngo7_whole = colsplit(site23_ngo7_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site23_ngo7 = data.frame(site23_ngo7_whole$id, site23_ngo7_whole$iter, site23_ngo7_whole$tstep, site23_ngo7_whole$state)
names(site23_ngo7) = c('id', 'iter', 'tstep', 'state')
write.table(site23_ngo7,file="~/Documents/csv_output/site23_ngo7.csv",sep=",",row.names=F)

site23_agro_vet3_tmp <- read.csv("~/Documents/threshranges/Site23/agro_vet/maxthresh3/site23graph.out", header=T)
site23_agro_vet3_whole = colsplit(site23_agro_vet3_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site23_agro_vet3 = data.frame(site23_agro_vet3_whole$id, site23_agro_vet3_whole$iter, site23_agro_vet3_whole$tstep, site23_agro_vet3_whole$state)
names(site23_agro_vet3) = c('id', 'iter', 'tstep', 'state')
write.table(site23_agro_vet3,file="~/Documents/csv_output/site23_agro_vet3.csv",sep=",",row.names=F)


site23_agro_vet5_tmp <- read.csv("~/Documents/threshranges/Site23/agro_vet/maxthresh5/site23graph.out", header=T)
site23_agro_vet5_whole = colsplit(site23_agro_vet5_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site23_agro_vet5 = data.frame(site23_agro_vet5_whole$id, site23_agro_vet5_whole$iter, site23_agro_vet5_whole$tstep, site23_agro_vet5_whole$state)
names(site23_agro_vet5) = c('id', 'iter', 'tstep', 'state')
write.table(site23_agro_vet5,file="~/Documents/csv_output/site23_agro_vet5.csv",sep=",",row.names=F)


site23_agro_vet7_tmp <- read.csv("~/Documents/threshranges/Site23/agro_vet/maxthresh7/site23graph.out", header=T)
site23_agro_vet7_whole = colsplit(site23_agro_vet7_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site23_agro_vet7 = data.frame(site23_agro_vet7_whole$id, site23_agro_vet7_whole$iter, site23_agro_vet7_whole$tstep, site23_agro_vet7_whole$state)
names(site23_agro_vet7) = c('id', 'iter', 'tstep', 'state')
write.table(site23_agro_vet7,file="~/Documents/csv_output/site23_agro_vet7.csv",sep=",",row.names=F)

site11_extension3_tmp <- read.csv("~/Documents/threshranges/Site11/extension/maxthresh3/site11graph.out", header=T)
site11_extension3_whole = colsplit(site11_extension3_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_extension3 = data.frame(site11_extension3_whole$id, site11_extension3_whole$iter, site11_extension3_whole$tstep, site11_extension3_whole$state)
names(site11_extension3) = c('id', 'iter', 'tstep', 'state')
write.table(site11_extension3,file="~/Documents/csv_output/site11_extension3.csv",sep=",",row.names=F)


site11_extension5_tmp <- read.csv("~/Documents/threshranges/Site11/extension/maxthresh5/site11graph.out", header=T)
site11_extension5_whole = colsplit(site11_extension5_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_extension5 = data.frame(site11_extension5_whole$id, site11_extension5_whole$iter, site11_extension5_whole$tstep, site11_extension5_whole$state)
names(site11_extension5) = c('id', 'iter', 'tstep', 'state')
write.table(site11_extension5,file="~/Documents/csv_output/site11_extension5.csv",sep=",",row.names=F)


site11_extension7_tmp <- read.csv("~/Documents/threshranges/Site11/extension/maxthresh7/site11graph.out", header=T)
site11_extension7_whole = colsplit(site11_extension7_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_extension7 = data.frame(site11_extension7_whole$id, site11_extension7_whole$iter, site11_extension7_whole$tstep, site11_extension7_whole$state)
names(site11_extension7) = c('id', 'iter', 'tstep', 'state')
write.table(site11_extension7,file="~/Documents/csv_output/site11_extension7.csv",sep=",",row.names=F)


site11_gvt_parastatal3_tmp <- read.csv("~/Documents/threshranges/Site11/gvt_parastatal/maxthresh3/site11graph.out", header=T)
site11_gvt_parastatal3_whole = colsplit(site11_gvt_parastatal3_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_gvt_parastatal3 = data.frame(site11_gvt_parastatal3_whole$id, site11_gvt_parastatal3_whole$iter, site11_gvt_parastatal3_whole$tstep, site11_gvt_parastatal3_whole$state)
names(site11_gvt_parastatal3) = c('id', 'iter', 'tstep', 'state')
write.table(site11_gvt_parastatal3,file="~/Documents/csv_output/site11_gvt_parastatal3.csv",sep=",",row.names=F)


site11_gvt_parastatal5_tmp <- read.csv("~/Documents/threshranges/Site11/gvt_parastatal/maxthresh5/site11graph.out", header=T)
site11_gvt_parastatal5_whole = colsplit(site11_gvt_parastatal5_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_gvt_parastatal5 = data.frame(site11_gvt_parastatal5_whole$id, site11_gvt_parastatal5_whole$iter, site11_gvt_parastatal5_whole$tstep, site11_gvt_parastatal5_whole$state)
names(site11_gvt_parastatal5) = c('id', 'iter', 'tstep', 'state')
write.table(site11_gvt_parastatal5,file="~/Documents/csv_output/site11_gvt_parastatal5.csv",sep=",",row.names=F)


site11_gvt_parastatal7_tmp <- read.csv("~/Documents/threshranges/Site11/gvt_parastatal/maxthresh7/site11graph.out", header=T)
site11_gvt_parastatal7_whole = colsplit(site11_gvt_parastatal7_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_gvt_parastatal7 = data.frame(site11_gvt_parastatal7_whole$id, site11_gvt_parastatal7_whole$iter, site11_gvt_parastatal7_whole$tstep, site11_gvt_parastatal7_whole$state)
names(site11_gvt_parastatal7) = c('id', 'iter', 'tstep', 'state')
write.table(site11_gvt_parastatal7,file="~/Documents/csv_output/site11_gvt_parastatal7.csv",sep=",",row.names=F)

site12_farmer_org_leader3_tmp <- read.csv("~/Documents/threshranges/Site12/farmer_org_leader/maxthresh3/site12graph.out", header=T)
site12_farmer_org_leader3_whole = colsplit(site12_farmer_org_leader3_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_farmer_org_leader3 = data.frame(site12_farmer_org_leader3_whole$id, site12_farmer_org_leader3_whole$iter, site12_farmer_org_leader3_whole$tstep, site12_farmer_org_leader3_whole$state)
names(site12_farmer_org_leader3) = c('id', 'iter', 'tstep', 'state')
write.table(site12_farmer_org_leader3,file="~/Documents/csv_output/site12_farmer_org_leader3.csv",sep=",",row.names=F)


site12_farmer_org_leader5_tmp <- read.csv("~/Documents/threshranges/Site12/farmer_org_leader/maxthresh5/site12graph.out", header=T)
site12_farmer_org_leader5_whole = colsplit(site12_farmer_org_leader5_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_farmer_org_leader5 = data.frame(site12_farmer_org_leader5_whole$id, site12_farmer_org_leader5_whole$iter, site12_farmer_org_leader5_whole$tstep, site12_farmer_org_leader5_whole$state)
names(site12_farmer_org_leader5) = c('id', 'iter', 'tstep', 'state')
write.table(site12_farmer_org_leader5,file="~/Documents/csv_output/site12_farmer_org_leader5.csv",sep=",",row.names=F)


site12_farmer_org_leader7_tmp <- read.csv("~/Documents/threshranges/Site12/farmer_org_leader/maxthresh7/site12graph.out", header=T)
site12_farmer_org_leader7_whole = colsplit(site12_farmer_org_leader7_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_farmer_org_leader7 = data.frame(site12_farmer_org_leader7_whole$id, site12_farmer_org_leader7_whole$iter, site12_farmer_org_leader7_whole$tstep, site12_farmer_org_leader7_whole$state)
names(site12_farmer_org_leader7) = c('id', 'iter', 'tstep', 'state')
write.table(site12_farmer_org_leader7,file="~/Documents/csv_output/site12_farmer_org_leader7.csv",sep=",",row.names=F)

site12_wkly_mkt_vendor3_tmp <- read.csv("~/Documents/threshranges/Site12/wkly_mkt_vendor/maxthresh3/site12graph.out", header=T)
site12_wkly_mkt_vendor3_whole = colsplit(site12_wkly_mkt_vendor3_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_wkly_mkt_vendor3 = data.frame(site12_wkly_mkt_vendor3_whole$id, site12_wkly_mkt_vendor3_whole$iter, site12_wkly_mkt_vendor3_whole$tstep, site12_wkly_mkt_vendor3_whole$state)
names(site12_wkly_mkt_vendor3) = c('id', 'iter', 'tstep', 'state')
write.table(site12_wkly_mkt_vendor3,file="~/Documents/csv_output/site12_wkly_mkt_vendor3.csv",sep=",",row.names=F)


site12_wkly_mkt_vendor5_tmp <- read.csv("~/Documents/threshranges/Site12/wkly_mkt_vendor/maxthresh5/site12graph.out", header=T)
site12_wkly_mkt_vendor5_whole = colsplit(site12_wkly_mkt_vendor5_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_wkly_mkt_vendor5 = data.frame(site12_wkly_mkt_vendor5_whole$id, site12_wkly_mkt_vendor5_whole$iter, site12_wkly_mkt_vendor5_whole$tstep, site12_wkly_mkt_vendor5_whole$state)
names(site12_wkly_mkt_vendor5) = c('id', 'iter', 'tstep', 'state')
write.table(site12_wkly_mkt_vendor5,file="~/Documents/csv_output/site12_wkly_mkt_vendor5.csv",sep=",",row.names=F)


site12_wkly_mkt_vendor7_tmp <- read.csv("~/Documents/threshranges/Site12/wkly_mkt_vendor/maxthresh7/site12graph.out", header=T)
site12_wkly_mkt_vendor7_whole = colsplit(site12_wkly_mkt_vendor7_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site12_wkly_mkt_vendor7 = data.frame(site12_wkly_mkt_vendor7_whole$id, site12_wkly_mkt_vendor7_whole$iter, site12_wkly_mkt_vendor7_whole$tstep, site12_wkly_mkt_vendor7_whole$state)
names(site12_wkly_mkt_vendor7) = c('id', 'iter', 'tstep', 'state')
write.table(site12_wkly_mkt_vendor7,file="~/Documents/csv_output/site12_wkly_mkt_vendor7.csv",sep=",",row.names=F)

site13_agro_vet3_tmp <- read.csv("~/Documents/threshranges/Site13/agro_vet/maxthresh3/site13graph.out", header=T)
site13_agro_vet3_whole = colsplit(site13_agro_vet3_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site13_agro_vet3 = data.frame(site13_agro_vet3_whole$id, site13_agro_vet3_whole$iter, site13_agro_vet3_whole$tstep, site13_agro_vet3_whole$state)
names(site13_agro_vet3) = c('id', 'iter', 'tstep', 'state')
write.table(site13_agro_vet3,file="~/Documents/csv_output/site13_agro_vet3.csv",sep=",",row.names=F)


site13_agro_vet5_tmp <- read.csv("~/Documents/threshranges/Site13/agro_vet/maxthresh5/site13graph.out", header=T)
site13_agro_vet5_whole = colsplit(site13_agro_vet5_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site13_agro_vet5 = data.frame(site13_agro_vet5_whole$id, site13_agro_vet5_whole$iter, site13_agro_vet5_whole$tstep, site13_agro_vet5_whole$state)
names(site13_agro_vet5) = c('id', 'iter', 'tstep', 'state')
write.table(site13_agro_vet5,file="~/Documents/csv_output/site13_agro_vet5.csv",sep=",",row.names=F)


site13_agro_vet7_tmp <- read.csv("~/Documents/threshranges/Site13/agro_vet/maxthresh7/site13graph.out", header=T)
site13_agro_vet7_whole = colsplit(site13_agro_vet7_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site13_agro_vet7 = data.frame(site13_agro_vet7_whole$id, site13_agro_vet7_whole$iter, site13_agro_vet7_whole$tstep, site13_agro_vet7_whole$state)
names(site13_agro_vet7) = c('id', 'iter', 'tstep', 'state')
write.table(site13_agro_vet7,file="~/Documents/csv_output/site13_agro_vet7.csv",sep=",",row.names=F)

site13_urban_vendor3_tmp <- read.csv("~/Documents/threshranges/Site13/urban_vendor/maxthresh3/site13graph.out", header=T)
site13_urban_vendor3_whole = colsplit(site13_urban_vendor3_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site13_urban_vendor3 = data.frame(site13_urban_vendor3_whole$id, site13_urban_vendor3_whole$iter, site13_urban_vendor3_whole$tstep, site13_urban_vendor3_whole$state)
names(site13_urban_vendor3) = c('id', 'iter', 'tstep', 'state')
write.table(site13_urban_vendor3,file="~/Documents/csv_output/site13_urban_vendor3.csv",sep=",",row.names=F)


site13_urban_vendor5_tmp <- read.csv("~/Documents/threshranges/Site13/urban_vendor/maxthresh5/site13graph.out", header=T)
site13_urban_vendor5_whole = colsplit(site13_urban_vendor5_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site13_urban_vendor5 = data.frame(site13_urban_vendor5_whole$id, site13_urban_vendor5_whole$iter, site13_urban_vendor5_whole$tstep, site13_urban_vendor5_whole$state)
names(site13_urban_vendor5) = c('id', 'iter', 'tstep', 'state')
write.table(site13_urban_vendor5,file="~/Documents/csv_output/site13_urban_vendor5.csv",sep=",",row.names=F)


site13_urban_vendor7_tmp <- read.csv("~/Documents/threshranges/Site13/urban_vendor/maxthresh7/site13graph.out", header=T)
site13_urban_vendor7_whole = colsplit(site13_urban_vendor7_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site13_urban_vendor7 = data.frame(site13_urban_vendor7_whole$id, site13_urban_vendor7_whole$iter, site13_urban_vendor7_whole$tstep, site13_urban_vendor7_whole$state)
names(site13_urban_vendor7) = c('id', 'iter', 'tstep', 'state')
write.table(site13_urban_vendor7,file="~/Documents/csv_output/site13_urban_vendor7.csv",sep=",",row.names=F)

####################################################### new #########################################

site11_new_tmp <- read.csv("~/Documents/csv_output/new/site11graph_ngo.out", header=T)
site11_new_whole = colsplit(site11_new_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_new = data.frame(site11_new_whole$id, site11_new_whole$iter, site11_new_whole$tstep, site11_new_whole$state)
names(site11_new) = c('id', 'iter', 'tstep', 'state')
write.table(site11_new,file="~/Documents/csv_output/new/site11graph_ngo.csv",sep=",",row.names=F)


site11_agro_vet_tmp <- read.csv("~/Documents/csv_output/new/site11graph_agro_vet.out", header=T)
site11_agro_vet_whole = colsplit(site11_agro_vet_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_agro_vet = data.frame(site11_agro_vet_whole$id, site11_agro_vet_whole$iter, site11_agro_vet_whole$tstep, site11_agro_vet_whole$state)
names(site11_agro_vet) = c('id', 'iter', 'tstep', 'state')
write.table(site11_agro_vet,file="~/Documents/csv_output/new/site11graph_agro_vet.csv",sep=",",row.names=F)