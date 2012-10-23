
library(Hmisc)
library(reshape)
library(plyr)

whole_data = read.csv('/home/ndssl/Desktop/Technet_final_database.csv', header=T)

#rename contacts and responses for whole data (not site specific)
#done in python:
chief = whole_data[5:11]
farmer = whole_data[12:18]
neighbor = whole_data[19:25]
mkt_vendor = whole_data[26:32]
urban_vendor = whole_data[33:39]
agro_vendor = whole_data[40:46]
teacher = whole_data[47:53]
minister = whole_data[54:60]
xtens_agent = whole_data[61:67]
ngo = whole_data[68:74]
vet = whole_data[75:81]
gvt_parastatals = whole_data[82:88]
ag_researcher = whole_data[89:95]
ag_rep = whole_data[96:102]
tractor_owner = whole_data[103:109]
leader_farm = whole_data[110:116]
leader_women = whole_data[117:123]
leader_youth = whole_data[124:130]
politician = whole_data[131:137]
other = whole_data[138:144]

IDs = whole_data[1:4]

Combined = cbind(IDs, chief, farmer, neighbor, mkt_vendor, urban_vendor, agro_vendor, teacher, minister, xtens_agent, ngo, vet, gvt_parastatals, ag_researcher, ag_rep, tractor_owner, leader_farm, leader_women, leader_youth, politician, other)

Tororo = whole_data[whole_data$Site==11,]
Kapchorwa = whole_data[whole_data$Site==12,]
Bungoma = whole_data[whole_data$Site==13,]
Kitale = whole_data[whole_data$Site==23,]
                                                                                                                                                 Tororo_beliefs.whole_data.agnttype)

####################################################################################

############Edge weights
#####isolate responses to question E (frequency of contact) from the survey according to site 11, 12, 13, 23

library(igraph)
library(reshape)

##site 11 (Tororo)
questionE = data.frame(Combined[c(grep("Hh_23e_*", colnames(Combined)))], whole_data$hhrn, whole_data$Site) #create data frame with question e variables and identifying variables
E_melted11 = questionE[questionE$whole_data.Site == 11,]
E_melted11 = melt.data.frame(E_melted11, id.vars=c('whole_data.hhrn', 'whole_data.Site'))
E_melted11 = data.frame(E_melted11$hhrn, E_melted11$variable, E_melted11$value)

colnames(E_melted11)[which(E_melted11[1,]>0)]

##eliminate responses of "Never"
E11 = E_melted11[E_melted11$value != 0,]


#need to add edge weights according to frequency of contact, weekly as the most heavily weighted and yearly as the least heavily weighted

attach(E_melted11)
E11.value<-rep(E11[,3])  #E11.value is what will be used to assign numerical values to the frequency values (Monthly, etc)
E11.recode<-rep(0, 458)

#assign numerical values (edge weights) to frequencies
E11.recode[E11.value=="Yearly"]<-1
E11.recode[E11.value=="Seasonally"]<-2
E11.recode[E11.value=="Monthly"]<-3
E11.recode[E11.value=="Biweekly"]<-4
E11.recode[E11.value=="Weekly"]<-5

E11.var<-rep(E11[,2])
E11.contacts<-rep(0, 458)

E11.contacts[E11.var=="Hh_23e_1"]<-"Chief"
E11.contacts[E11.var=="Hh_23e_2"]<-"Farmers"
E11.contacts[E11.var=="Hh_23e_3"]<-"Neighbor/friend"
E11.contacts[E11.var=="Hh_23e_4"]<-"Weekly market vendor"
E11.contacts[E11.var=="Hh_23e_5"]<-"Urban vendor"
E11.contacts[E11.var=="Hh_23e_6"]<-"Vendor in agro-vet shop"
E11.contacts[E11.var=="Hh_23e_7"]<-"Teacher"
E11.contacts[E11.var=="Hh_23e_8"]<-"Religious leader"
E11.contacts[E11.var=="Hh_23e_9"]<-"Extension agent"
E11.contacts[E11.var=="Hh_23e_10"]<-"NGO agent"
E11.contacts[E11.var=="Hh_23e_11"]<-"Vet service provider"
E11.contacts[E11.var=="Hh_23e_12"]<-"Gvt parastatal"
E11.contacts[E11.var=="Hh_23e_13"]<-"Ag researcher"
E11.contacts[E11.var=="Hh_23e_14"]<-"Microfinance rep"
E11.contacts[E11.var=="Hh_23e_15"]<-"Tractor owner"
E11.contacts[E11.var=="Hh_23e_16"]<-"Farmer org. leader"
E11.contacts[E11.var=="Hh_23e_17"]<-"Women's org. leader"
E11.contacts[E11.var=="Hh_23e_18"]<-"Youth org. leader"
E11.contacts[E11.var=="Hh_23e_19"]<-"Local politican"
E11.contacts[E11.var=="Hh_23e_20"]<-"Other"

E11_weighted<-data.frame(id=E11[,1],var=E11.contacts,value=E11.recode) # create a new dataframe that includes edge weights

E(g)$weight <- E(g)$value

g = graph.data.frame(E11_weighted)

#Write graph out to open in gephi
write.graph(g, "site11.graphml", format= "graphml")


#################################################################################################

##look at farmer to farmer contact


#determining edge weights
###site 11

farmer11_contact = farmer11[farmer11$Hh_23e_2 != 0,]
count(farmer11$Hh_23e_2 == 0)
count(farmer11$Hh_23e_2 == 1)
count(farmer11$Hh_23e_2 == 2)
count(farmer11$Hh_23e_2 == 3)
count(farmer11$Hh_23e_2 == 4)
count(farmer11$Hh_23e_2 == 5)

count(neighbor11$Hh_23e_3 == 0)
count(neighbor11$Hh_23e_3 == 1)
count(neighbor11$Hh_23e_3 == 2)
count(neighbor11$Hh_23e_3 == 3)
count(neighbor11$Hh_23e_3 == 4)
count(neighbor11$Hh_23e_3 == 5)

farmertofarmer11 <- matrix(c(76, 12, 2, 3, 13, 2, 60, 17, 9, 6, 12, 4),ncol=6,byrow=TRUE)
rownames(farmertofarmer11) <- c("Other farmers", "Neighbors/Friends")
colnames(farmertofarmer11) <- c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly")


#this doesn't work, need to fix
#barplot(as.matrix(farmertofarmer11), main="Contact between farmers", ylab= "Frequency of contact", beside=TRUE, col=rainbow(5))


#####################################################################################

#look at distributions of # of contacts compared to wealth (wealth index of 0-2 from personal characteristics/resource endowments dataset)

#remove institutions, leave only farmers for one of the four sites
E11_farmers = E11[!hhrn11 %in% c(11001:11015),]

#remove site number column and frequency of contact
E11_farmers_melt<-data.frame(id=E11_farmers[,1], var=E11_farmers[,3])

#sort according to the id column
order_E11_farmers_melt <- E11_farmers_melt[order(E11_farmers_melt$id),]

table(order_E11_farmers_melt$id)
#make a data frame with each unique id and its frequency. this is number of contacts
num_contacts.E11 = as.data.frame(table(order_E11_farmers_melt$id))

names(num_contacts.E11)[1] <- "ID"
names(num_contacts.E11)[2] <- "Contacts"

reg_indicators = read.csv('/home/ndssl/Desktop/regression_indicators.csv', header=T)
#find a way to match column 1 and 9 with hhrn in whole_data

#isolate site11 in regression indicators
reg_ind11 = reg_indicators[reg_indicators$ID_number <= 111101,]

#melt down to just unique id and wealth index
reg_ind11_wealth_tmp = data.frame(reg_ind11$ID_number, reg_ind11$wealth_index)

#create new dataframe of both sets of unique ids, wealth index, and number of contacts, eliminating those rows that only appear in wealth frame and not in num_contacts.E11
reg_ind11_wealth = reg_ind11_wealth_tmp[c(-24,-30,-67,-85),]


names(reg_ind11_wealth)[1] <- "ID"
names(reg_ind11_wealth)[2] <- "Wealth"

x <- cbind(num_contacts.E11, reg_ind11_wealth)

xplot_tmp = data.frame(x$Contacts, x$Wealth)
xplot = data.frame(xplot_tmp[order(xplot_tmp$x.Wealth),])

library(ggplot2)

qplot(xplot$x.Contacts, xplot$x.Wealth, data=xplot, xlab="Number of Contacts", ylab="Wealth Index", main="Distribution of # of Contacts to Wealth")


####################################################################################

#isolate tillage beliefs question from technet data

tillage_beliefs = whole_data[,187]
tillage_beliefs = factor(tillage_beliefs, levels = c(0:4, -99)) #labels = c("Strongly disagree", "Disagree", "Neutral", "Agree", "Strongly agree", NA))

Tororo_tillage_tmp = Tororo[,187]
Kapchorwa_tillage_tmp = Kapchorwa[,187]
Bungoma_tillage_tmp = Bungoma[,187]
Kitale_tillage_tmp = Kitale[,187]

Tororo_tillage = factor(Tororo_tillage_tmp, levels = c(0:4, -99)) #labels = c("Strongly disagree", "Disagree", "Neutral", "Agree", "Strongly agree", NA))
Kapchorwa_tillage = factor(Kapchorwa_tillage_tmp, levels = c(0:4, -99)) #labels = c("Strongly disagree", "Disagree", "Neutral", "Agree", "Strongly agree", NA))
Bungoma_tillage = factor(Bungoma_tillage_tmp, levels = c(0:4, -99)) #labels = c("Strongly disagree", "Disagree", "Neutral", "Agree", "Strongly agree", NA))
Kitale_tillage = factor(Kitale_tillage_tmp, levels = c(0:4, -99)) #labels = c("Strongly disagree", "Disagree", "Neutral", "Agree", "Strongly agree", NA))

Question24 = whole_data[173:192]
Combined_beliefs = cbind(IDs, Question24)

beliefs = data.frame(Combined_beliefs[c(grep("Hh_24rank_*", colnames(Combined_beliefs)))], whole_data$hhrn, whole_data$agnttype, whole_data$Site)
Tororo_beliefs = beliefs[beliefs$whole_data.Site == 11,]
Tillage11_tmp = data.frame(Tororo_beliefs$Hh_24rank_15, Tororo_beliefs$whole_data.hhrn, Tororo_beliefs$whole_data.agnttype)
Tillage11_tmp2 = data.frame(Tillage11_tmp$Tororo_beliefs.Hh_24rank_15, Tillage11_tmp$Tororo_beliefs.whole_data.hhrn)

#eliminate -99 values
Tillage11 = Tillage11_tmp2[c(-(1:15), -34, -51, -74, -85, -99),]

#rename columns
names(Tillage11)[1] <- "beliefs"
names(Tillage11)[2] <- "ID"

#######################################################################

#reshape personal characteristics data to include ind. vars: wealth index, female household head, and % energy from staples

#reg_ind11 = reg_indicators[reg_indicators$ID_number <= 111101,]
#but add back institutions

#melt down to just unique id and wealth index
ind_var11 = data.frame(reg_ind11$ID_number, reg_ind11$wealth_index, reg_ind11$female_household_Head, reg_ind11$Percent_energy_from_staples)

names(ind_var11)[1] <- "ID"
names(ind_var11)[2] <- "Wealth_index"
names(ind_var11)[3] <- "Female_household_head"
names(ind_var11)[4] <- "Energy_from_staples"

#change the values of tillage beliefs from the scale of 1-5 to 0-1
library(epicalc)
library(car)

.data = Tillage11
Tillrecode11 <- recode(Tillage11$beliefs, "c('1','2','3')='0'; else='1'")
Tillbeliefs11 <- data.frame(Tillage11[,2], Tillrecode11)
names(Tillbeliefs11)[1] <- "ID"

Till_var11 = merge(Tillbeliefs11,ind_var11, by="ID")


#########################################################################

#regressions
#attach(Till_var11)

Till_var11$Wealth_index <- factor(Till_var11$Wealth_index)
Till_var11$Female_household_head <- factor(Till_var11$Female_household_head)

glm.out <- glm(Tillrecode11 ~ Wealth_index + Female_household_head + Energy_from_staples, data=Till_var11, family=binomial(link="logit"))
glm.fit <- fitted(glm.out)
#curve(predict(glm.fit,data.frame(Tillrecode11=x),type="resp"),add=TRUE)

##############################################################################
#try running the regression using all of the variables - use reg_ind11 instead of Till_var11

names(reg_ind11)[1] <- "ID"
Till_var11_big = merge(Tillbeliefs11,reg_ind11, by="ID")


Till_var11_big$wealth_index <- factor(Till_var11_big$wealth_index)

glm.out_whole <- glm(Tillrecode11 ~ wealth_index + female_household_Head + Percent_energy_from_staples + Gender_respondent + Age_respondent + Educ_respondent + Importance_offarm_income + animal_traction + tractor + area_farmed + modern_cap_int_farming + mixed_farming + poor_health + access_to_credit, data=Till_var11_big, family=binomial(link="logit"))
glm.fit <- fitted(glm.out_whole)

dbinom(5, size=88, prob=.4)