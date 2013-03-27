# install.packages("Hmisc")
library(Hmisc)
library(reshape)
library(plyr)

#whole_data = read.csv('/home/ndssl/Desktop/technet.csv', header=T) #Read in data. Change filepath.

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

chief$Hh_23a_1 = factor(chief$Hh_23a_1, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
chief$Hh_23b_1 = factor(chief$Hh_23b_1, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
chief$Hh_23c_1 = factor(chief$Hh_23c_1, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
chief$Hh_23e_1 = factor(chief$Hh_23e_1, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
chief$Hh_23f_1 = factor(chief$Hh_23f_1, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
chief$Hh_23g_1 = factor(chief$Hh_23g_1, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
farmer$Hh_23a_2 = factor(farmer$Hh_23a_2, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
farmer$Hh_23b_2 = factor(farmer$Hh_23b_2, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
farmer$Hh_23c_2 = factor(farmer$Hh_23c_2, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
farmer$Hh_23e_2 = factor(farmer$Hh_23e_2, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
farmer$Hh_23f_2 = factor(farmer$Hh_23f_2, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
farmer$Hh_23g_2 = factor(farmer$Hh_23g_2, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
neighbor$Hh_23a_3 = factor(neighbor$Hh_23a_3, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
neighbor$Hh_23b_3 = factor(neighbor$Hh_23b_3, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
neighbor$Hh_23c_3 = factor(neighbor$Hh_23c_3, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
neighbor$Hh_23e_3 = factor(neighbor$Hh_23e_3, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
neighbor$Hh_23f_3 = factor(neighbor$Hh_23f_3, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
neighbor$Hh_23g_3 = factor(neighbor$Hh_23g_3, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
mkt_vendor$Hh_23a_4 = factor(mkt_vendor$Hh_23a_4, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
mkt_vendor$Hh_23b_4 = factor(mkt_vendor$Hh_23b_4, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
mkt_vendor$Hh_23c_4 = factor(mkt_vendor$Hh_23c_4, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
mkt_vendor$Hh_23e_4 = factor(mkt_vendor$Hh_23e_4, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
mkt_vendor$Hh_23f_4 = factor(mkt_vendor$Hh_23f_4, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
mkt_vendor$Hh_23g_4 = factor(mkt_vendor$Hh_23g_4, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
urban_vendor$Hh_23a_5 = factor(urban_vendor$Hh_23a_5, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
urban_vendor$Hh_23b_5 = factor(urban_vendor$Hh_23b_5, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
urban_vendor$Hh_23c_5 = factor(urban_vendor$Hh_23c_5, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
urban_vendor$Hh_23e_5 = factor(urban_vendor$Hh_23e_5, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
urban_vendor$Hh_23f_5 = factor(urban_vendor$Hh_23f_5, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
urban_vendor$Hh_23g_5 = factor(urban_vendor$Hh_23g_5, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
agro_vendor$Hh_23a_6 = factor(agro_vendor$Hh_23a_6, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
agro_vendor$Hh_23b_6 = factor(agro_vendor$Hh_23b_6, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
agro_vendor$Hh_23c_6 = factor(agro_vendor$Hh_23c_6, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
agro_vendor$Hh_23e_6 = factor(agro_vendor$Hh_23e_6, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
agro_vendor$Hh_23f_6 = factor(agro_vendor$Hh_23f_6, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
agro_vendor$Hh_23g_6 = factor(agro_vendor$Hh_23g_6, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
teacher$Hh_23a_7 = factor(teacher$Hh_23a_7, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
teacher$Hh_23b_7 = factor(teacher$Hh_23b_7, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
teacher$Hh_23c_7 = factor(teacher$Hh_23c_7, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
teacher$Hh_23e_7 = factor(teacher$Hh_23e_7, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
teacher$Hh_23f_7 = factor(teacher$Hh_23f_7, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
teacher$Hh_23g_7 = factor(teacher$Hh_23g_7, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
minister$Hh_23a_8 = factor(minister$Hh_23a_8, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
minister$Hh_23b_8 = factor(minister$Hh_23b_8, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
minister$Hh_23c_8 = factor(minister$Hh_23c_8, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
minister$Hh_23e_8 = factor(minister$Hh_23e_8, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
minister$Hh_23f_8 = factor(minister$Hh_23f_8, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
minister$Hh_23g_8 = factor(minister$Hh_23g_8, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
xtens_agent$Hh_23a_9 = factor(xtens_agent$Hh_23a_9, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
xtens_agent$Hh_23b_9 = factor(xtens_agent$Hh_23b_9, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
xtens_agent$Hh_23c_9 = factor(xtens_agent$Hh_23c_9, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
xtens_agent$Hh_23e_9 = factor(xtens_agent$Hh_23e_9, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
xtens_agent$Hh_23f_9 = factor(xtens_agent$Hh_23f_9, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
xtens_agent$Hh_23g_9 = factor(xtens_agent$Hh_23g_9, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
ngo$Hh_23a_10 = factor(ngo$Hh_23a_10, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
ngo$Hh_23b_10 = factor(ngo$Hh_23b_10, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
ngo$Hh_23c_10 = factor(ngo$Hh_23c_10, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
ngo$Hh_23e_10 = factor(ngo$Hh_23e_10, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
ngo$Hh_23f_10 = factor(ngo$Hh_23f_10, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
ngo$Hh_23g_10 = factor(ngo$Hh_23g_10, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
vet$Hh_23a_11 = factor(vet$Hh_23a_11, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
vet$Hh_23b_11 = factor(vet$Hh_23b_11, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
vet$Hh_23c_11 = factor(vet$Hh_23c_11, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
vet$Hh_23e_11 = factor(vet$Hh_23e_11, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
vet$Hh_23f_11 = factor(vet$Hh_23f_11, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
vet$Hh_23g_11 = factor(vet$Hh_23g_11, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
gvt_parastatals$Hh_23a_12 = factor(gvt_parastatals$Hh_23a_12, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
gvt_parastatals$Hh_23b_12 = factor(gvt_parastatals$Hh_23b_12, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
gvt_parastatals$Hh_23c_12 = factor(gvt_parastatals$Hh_23c_12, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
gvt_parastatals$Hh_23e_12 = factor(gvt_parastatals$Hh_23e_12, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
gvt_parastatals$Hh_23f_12 = factor(gvt_parastatals$Hh_23f_12, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
gvt_parastatals$Hh_23g_12 = factor(gvt_parastatals$Hh_23g_12, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
ag_researcher$Hh_23a_13 = factor(ag_researcher$Hh_23a_13, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
ag_researcher$Hh_23b_13 = factor(ag_researcher$Hh_23b_13, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
ag_researcher$Hh_23c_13 = factor(ag_researcher$Hh_23c_13, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
ag_researcher$Hh_23e_13 = factor(ag_researcher$Hh_23e_13, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
ag_researcher$Hh_23f_13 = factor(ag_researcher$Hh_23f_13, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
ag_researcher$Hh_23g_13 = factor(ag_researcher$Hh_23g_13, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
ag_rep$Hh_23a_14 = factor(ag_rep$Hh_23a_14, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
ag_rep$Hh_23b_14 = factor(ag_rep$Hh_23b_14, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
ag_rep$Hh_23c_14 = factor(ag_rep$Hh_23c_14, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
ag_rep$Hh_23e_14 = factor(ag_rep$Hh_23e_14, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
ag_rep$Hh_23f_14 = factor(ag_rep$Hh_23f_14, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
ag_rep$Hh_23g_14 = factor(ag_rep$Hh_23g_14, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
tractor_owner$Hh_23a_15 = factor(tractor_owner$Hh_23a_15, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
tractor_owner$Hh_23b_15 = factor(tractor_owner$Hh_23b_15, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
tractor_owner$Hh_23c_15 = factor(tractor_owner$Hh_23c_15, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
tractor_owner$Hh_23e_15 = factor(tractor_owner$Hh_23e_15, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
tractor_owner$Hh_23f_15 = factor(tractor_owner$Hh_23f_15, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
tractor_owner$Hh_23g_15 = factor(tractor_owner$Hh_23g_15, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
leader_farm$Hh_23a_16 = factor(leader_farm$Hh_23a_16, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
leader_farm$Hh_23b_16 = factor(leader_farm$Hh_23b_16, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
leader_farm$Hh_23c_16 = factor(leader_farm$Hh_23c_16, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
leader_farm$Hh_23e_16 = factor(leader_farm$Hh_23e_16, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
leader_farm$Hh_23f_16 = factor(leader_farm$Hh_23f_16, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
leader_farm$Hh_23g_16 = factor(leader_farm$Hh_23g_16, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
leader_women$Hh_23a_17 = factor(leader_women$Hh_23a_17, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
leader_women$Hh_23b_17 = factor(leader_women$Hh_23b_17, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
leader_women$Hh_23c_17 = factor(leader_women$Hh_23c_17, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
leader_women$Hh_23e_17 = factor(leader_women$Hh_23e_17, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
leader_women$Hh_23f_17 = factor(leader_women$Hh_23f_17, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
leader_women$Hh_23g_17 = factor(leader_women$Hh_23g_17, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
leader_youth$Hh_23a_18 = factor(leader_youth$Hh_23a_18, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
leader_youth$Hh_23b_18 = factor(leader_youth$Hh_23b_18, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
leader_youth$Hh_23c_18 = factor(leader_youth$Hh_23c_18, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
leader_youth$Hh_23e_18 = factor(leader_youth$Hh_23e_18, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
leader_youth$Hh_23f_18 = factor(leader_youth$Hh_23f_18, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
leader_youth$Hh_23g_18 = factor(leader_youth$Hh_23g_18, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
politician$Hh_23a_19 = factor(politician$Hh_23a_19, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
politician$Hh_23b_19 = factor(politician$Hh_23b_19, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
politician$Hh_23c_19 = factor(politician$Hh_23c_19, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
politician$Hh_23e_19 = factor(politician$Hh_23e_19, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
politician$Hh_23f_19 = factor(politician$Hh_23f_19, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
politician$Hh_23g_19 = factor(politician$Hh_23g_19, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))
other$Hh_23a_20 = factor(other$Hh_23a_20, levels = c(0:11, -99), labels = c("None", "Seed", "Fertilizer", "Pesticide", "Herbicide", "Tractor", "Crop", "Finance", "Vet services", "Land", "Cash", "Other", NA))
other$Hh_23b_20 = factor(other$Hh_23b_20, levels = c(0:2, -99), labels = c("None", "Advice", "Info", NA))
other$Hh_23c_20 = factor(other$Hh_23c_20, levels = c(0:5, -99), labels = c("N/a", "Always them", "Mostly them", "50/50", "Mostly respondent", "Always respondent", NA))
other$Hh_23e_20 = factor(other$Hh_23e_20, levels = c(0:5, -99), labels = c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly", NA))
other$Hh_23f_20 = factor(other$Hh_23f_20, levels = c(0:5, -99), labels = c("N/a", "Always", "Most of the time", "Somewhat", "Rarely", "Never", NA))
other$Hh_23g_20 = factor(other$Hh_23g_20, levels = c(0:5, -99), labels = c("N/a", "All male", "Mostly male", "50/50", "Mostly female", "All female", NA))

IDs = whole_data[1:4]

Combined = cbind(IDs, chief, farmer, neighbor, mkt_vendor, urban_vendor, agro_vendor, teacher, minister, xtens_agent, ngo, vet, gvt_parastatals, ag_researcher, ag_rep, tractor_owner, leader_farm, leader_women, leader_youth, politician, other)
describe(Combined)


Tororo = whole_data[whole_data$Site==11,]
Kapchorwa = whole_data[whole_data$Site==12,]
Bungoma = whole_data[whole_data$Site==13,]
Kitale = whole_data[whole_data$Site==23,]

#rename contacts according to site

chief11 = Tororo[5:11]
farmer11 = Tororo[12:18]
neighbor11 = Tororo[19:25]
mkt_vendor11 = Tororo[26:32]
urban_vendor11 = Tororo[33:39]
agro_vendor11 = Tororo[40:46]
teacher11 = Tororo[47:53]
minister11 = Tororo[54:60]
xtens_agent11 = Tororo[61:67]
ngo11 = Tororo[68:74]
vet11 = Tororo[75:81]
gvt_parastatals11 = Tororo[82:88]
ag_researcher11 = Tororo[89:95]
ag_rep11 = Tororo[96:102]
tractor_owner11 = Tororo[103:109]
leader_farm11 = Tororo[110:116]
leader_women11 = Tororo[117:123]
leader_youth11 = Tororo[124:130]
politician11 = Tororo[131:137]
other11 = Tororo[138:144]

chief12 = Kapchorwa[5:11]
farmer12 = Kapchorwa[12:18]
neighbor12 = Kapchorwa[19:25]
mkt_vendor12 = Kapchorwa[26:32]
urban_vendor12 = Kapchorwa[33:39]
agro_vendor12 = Kapchorwa[40:46]
teacher12 = Kapchorwa[47:53]
minister12 = Kapchorwa[54:60]
xtens_agent12 = Kapchorwa[61:67]
ngo12 = Kapchorwa[68:74]
vet12 = Kapchorwa[75:81]
gvt_parastatals12 = Kapchorwa[82:88]
ag_researcher12 = Kapchorwa[89:95]
ag_rep12 = Kapchorwa[96:102]
tractor_owner12 = Kapchorwa[103:109]
leader_farm12 = Kapchorwa[110:116]
leader_women12 = Kapchorwa[117:123]
leader_youth12 = Kapchorwa[124:130]
politician12 = Kapchorwa[131:137]
other12 = Kapchorwa[138:144]

chief13 = Bungoma[5:11]
farmer13 = Bungoma[12:18]
neighbor13 = Bungoma[19:25]
mkt_vendor13 = Bungoma[26:32]
urban_vendor13 = Bungoma[33:39]
agro_vendor13 = Bungoma[40:46]
teacher13 = Bungoma[47:53]
minister13 = Bungoma[54:60]
xtens_agent13 = Bungoma[61:67]
ngo13 = Bungoma[68:74]
vet13 = Bungoma[75:81]
gvt_parastatals13 = Bungoma[82:88]
ag_researcher13 = Bungoma[89:95]
ag_rep13 = Bungoma[96:102]
tractor_owner13 = Bungoma[103:109]
leader_farm13 = Bungoma[110:116]
leader_women13 = Bungoma[117:123]
leader_youth13 = Bungoma[124:130]
politician13 = Bungoma[131:137]
other13 = Bungoma[138:144]


chief23 = Kitale[5:11]
farmer23 = Kitale[12:18]
neighbor23 = Kitale[19:25]
mkt_vendor23 = Kitale[26:32]
urban_vendor23 = Kitale[33:39]
agro_vendor23 = Kitale[40:46]
teacher23 = Kitale[47:53]
minister23 = Kitale[54:60]
xtens_agent23 = Kitale[61:67]
ngo23 = Kitale[68:74]
vet23 = Kitale[75:81]
gvt_parastatals23 = Kitale[82:88]
ag_researcher23 = Kitale[89:95]
ag_rep23 = Kitale[96:102]
tractor_owner23 = Kitale[103:109]
leader_farm23 = Kitale[110:116]
leader_women23 = Kitale[117:123]
leader_youth23 = Kitale[124:130]
politician23 = Kitale[131:137]
other23 = Kitale[138:144]

tillage_beliefs = whole_data[,187]
tillage_beliefs = factor(tillage_beliefs, levels = c(0:4, -99), labels = c("Strongly disagree", "Disagree", "Neutral", "Agree", "Strongly agree", NA))

Tororo_tillage_tmp = Tororo[,187]
Kapchorwa_tillage_tmp = Kapchorwa[,187]
Bungoma_tillage_tmp = Bungoma[,187]
Kitale_tillage_tmp = Kitale[,187]

Tororo_tillage = factor(Tororo_tillage_tmp, levels = c(0:4, -99), labels = c("Strongly disagree", "Disagree", "Neutral", "Agree", "Strongly agree", NA))
Kapchorwa_tillage = factor(Kapchorwa_tillage_tmp, levels = c(0:4, -99), labels = c("Strongly disagree", "Disagree", "Neutral", "Agree", "Strongly agree", NA))
Bungoma_tillage = factor(Bungoma_tillage_tmp, levels = c(0:4, -99), labels = c("Strongly disagree", "Disagree", "Neutral", "Agree", "Strongly agree", NA))
Kitale_tillage = factor(Kitale_tillage_tmp, levels = c(0:4, -99), labels = c("Strongly disagree", "Disagree", "Neutral", "Agree", "Strongly agree", NA))

Question24 = whole_data[173:192]
Combined_beliefs = cbind(IDs, Question24)

beliefs = data.frame(Combined_beliefs[c(grep("Hh_24rank_*", colnames(Combined_beliefs)))], whole_data$hhrn, whole_data$agnttype, whole_data$Site)
Tororo_beliefs = beliefs[beliefs$whole_data.Site == 11,]
Tillage11_tmp = data.frame(Tororo_beliefs$Hh_24rank_15, Tororo_beliefs$whole_data.hhrn, Tororo_beliefs$whole_data.agnttype)


#eliminate -99 values in first column?


#get beliefs data for small and large farmers down to a count

table(Tillage11_tmp$Tororo_beliefs.Hh_24rank_15, Tillage11_tmp$Tororo_beliefs.whole_data.agnttype)                                                                                                                                                        Tororo_beliefs.whole_data.agnttype)

####################################################################################

library(igraph)
library(reshape)

##site 11 (Tororo)

questionE = data.frame(Combined[c(grep("Hh_23e_*", colnames(Combined)))], whole_data$hhrn, whole_data$Site) #create data frame with question e variables and identifying variables
E_melted11 = questionE[questionE$whole_data.Site == 11,]
E_melted11 = melt.data.frame(E_melted11, id.vars=c('whole_data.hhrn', 'whole_data.Site'))

##eliminate responses of "Never"
E11_tmp = E_melted11[E_melted11$value != "Never",]

#create variable of just the institutions, to then use to add edges to the graph
E11_inst = E11_tmp[E11_tmp$whole_data.hhrn <= 11021,]

##eliminate institutions for now in variable that will become csv file to write into python notebook and later gephi
E11 = E11_tmp[E11_tmp$whole_data.hhrn >= 110000,]


names(E11)[1]<-"ID"
names(E11)[2]<-"Site"

#need to add edge weights
#selects all edges from g graph (3rd column of E_melted11)
#need to weight these values, weakly being the most heavily weighted and yearly being the least heavily weighted

E11.value<-rep(E11[,4])  #E11.value is what will be used to assign numerical values to the frequency values (Monthly, etc)
E11.recode<-rep(0, 268)

#assign numerical values (edge weights) to frequencies
E11.recode[E11.value=="Yearly"]<-1
E11.recode[E11.value=="Seasonally"]<-2
E11.recode[E11.value=="Monthly"]<-3
E11.recode[E11.value=="Biweekly"]<-4
E11.recode[E11.value=="Weekly"]<-5

#do the same for institutions##############################

names(E11_inst)[1]<-"ID"
names(E11_inst)[2]<-"Site"

E11_inst.value<-rep(E11_inst[,4])
E11_inst.recode<-rep(0, 206)
E11_inst.recode[E11_inst.value=="Yearly"]<-1
E11_inst.recode[E11_inst.value=="Seasonally"]<-2
E11_inst.recode[E11_inst.value=="Monthly"]<-3
E11_inst.recode[E11_inst.value=="Biweekly"]<-4
E11_inst.recode[E11_inst.value=="Weekly"]<-5


E11_inst.var<-rep(E11_inst[,3])
E11_inst.contacts<-rep(0, 206)

E11_inst.contacts[E11_inst.var=="Hh_23e_1"]<-"Chief"
E11_inst.contacts[E11_inst.var=="Hh_23e_2"]<-"Farmers"
E11_inst.contacts[E11_inst.var=="Hh_23e_3"]<-"Neighbor/friend"
E11_inst.contacts[E11_inst.var=="Hh_23e_4"]<-"Weekly market vendor"
E11_inst.contacts[E11_inst.var=="Hh_23e_5"]<-"Urban vendor"
E11_inst.contacts[E11_inst.var=="Hh_23e_6"]<-"Vendor in agro-vet shop"
E11_inst.contacts[E11_inst.var=="Hh_23e_7"]<-"Teacher"
E11_inst.contacts[E11_inst.var=="Hh_23e_8"]<-"Religious leader"
E11_inst.contacts[E11_inst.var=="Hh_23e_9"]<-"Extension agent"
E11_inst.contacts[E11_inst.var=="Hh_23e_10"]<-"NGO agent"
E11_inst.contacts[E11_inst.var=="Hh_23e_11"]<-"Vet service provider"
E11_inst.contacts[E11_inst.var=="Hh_23e_12"]<-"Gvt parastatal"
E11_inst.contacts[E11_inst.var=="Hh_23e_13"]<-"Ag researcher"
E11_inst.contacts[E11_inst.var=="Hh_23e_14"]<-"Microfinance rep"
E11_inst.contacts[E11_inst.var=="Hh_23e_15"]<-"Tractor owner"
E11_inst.contacts[E11_inst.var=="Hh_23e_16"]<-"Farmer org. leader"
E11_inst.contacts[E11_inst.var=="Hh_23e_17"]<-"Women's org. leader"
E11_inst.contacts[E11_inst.var=="Hh_23e_18"]<-"Youth org. leader"
E11_inst.contacts[E11_inst.var=="Hh_23e_19"]<-"Local politican"
E11_inst.contacts[E11_inst.var=="Hh_23e_20"]<-"Other"

##change ID to word for gephi
E11_inst.id<-rep(E11_inst[,1])
E11_inst.idname<-rep(0, 206)

E11_inst.idname[E11_inst.id=="11001"]<-"Chief"
E11_inst.idname[E11_inst.id=="11002"]<-"Farmers"
E11_inst.idname[E11_inst.id=="11003"]<-"Neighbor/friend"
E11_inst.idname[E11_inst.id=="11004"]<-"Weekly market vendor"
E11_inst.idname[E11_inst.id=="11005"]<-"Urban vendor"
E11_inst.idname[E11_inst.id=="11006"]<-"Vendor in agro-vet shop"
E11_inst.idname[E11_inst.id=="11007"]<-"Teacher"
E11_inst.idname[E11_inst.id=="11008"]<-"Religious leader"
E11_inst.idname[E11_inst.id=="11009"]<-"Extension agent"
E11_inst.idname[E11_inst.id=="11010"]<-"NGO agent"
E11_inst.idname[E11_inst.id=="11011"]<-"Vet service provider"
E11_inst.idname[E11_inst.id=="11012"]<-"Gvt parastatal"
E11_inst.idname[E11_inst.id=="11013"]<-"Ag researcher"
E11_inst.idname[E11_inst.id=="11014"]<-"Microfinance rep"
E11_inst.idname[E11_inst.id=="11015"]<-"Tractor owner"
E11_inst.idname[E11_inst.id=="11016"]<-"Farmer org. leader"
E11_inst.idname[E11_inst.id=="11017"]<-"Women's org. leader"
E11_inst.idname[E11_inst.id=="11018"]<-"Youth org. leader"
E11_inst.idname[E11_inst.id=="11019"]<-"Local politican"
E11_inst.idname[E11_inst.id=="11020"]<-"Other"

E11_inst_weighted<-data.frame(id=E11_inst.idname,var=E11_inst.contacts,value=E11_inst.recode) # create a new dataframe that includes edge weights

write.table(E11_inst_weighted, "~/Documents/E11_inst.csv")
####

E11.var<-rep(E11[,3])
E11.contacts<-rep(0, 268)

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

write.table(E11_weighted, "~/Documents/E11.csv")

##read in new farmer to farmer pairs created from python script

E11_newpairs_tmp = read.csv('/home/ndssl/Documents/csv_files_R/newpairsE11.csv', header=T)
E11_newpairs = data.frame(E11_newpairs_tmp$id, E11_newpairs_tmp$var, E11_newpairs_tmp$value)

names(E11_newpairs)[1] <- "id"
names(E11_newpairs)[2] <- "var"
names(E11_newpairs)[3] <- "value"

#combine the institutions and the new pairs into one data frame to write out to gephi
colnames(E11_inst_weighted) <- colnames(E11_newpairs)
E11_whole <- rbind(E11_newpairs, E11_inst_weighted)

g = graph.data.frame(E11_whole)
write.graph(g, "site11.graphml", format= "graphml")


#site 12

questionE = data.frame(Combined[c(grep("Hh_23e_*", colnames(Combined)))], whole_data$hhrn, whole_data$Site) #create data frame with question e variables and identifying variables
E_melted12 = questionE[questionE$whole_data.Site == 12,]
E_melted12 = melt.data.frame(E_melted12, id.vars=c('whole_data.hhrn', 'whole_data.Site'))

##eliminate responses of "Never"
E12_tmp = E_melted12[E_melted12$value != "Never",]

#create variable of just the institutions, to then use to add edges to the graph
E12_inst = E12_tmp[E12_tmp$whole_data.hhrn <= 12021,]

##eliminate institutions for now in variable that will become csv file to write into python notebook and later gephi
E12 = E12_tmp[E12_tmp$whole_data.hhrn >= 110000,]


names(E12)[1]<-"ID"
names(E12)[2]<-"Site"

#need to add edge weights
#selects all edges from g graph (3rd column of E_melted11)
#need to weight these values, weakly being the most heavily weighted and yearly being the least heavily weighted

E12.value<-rep(E12[,4])  #E11.value is what will be used to assign numerical values to the frequency values (Monthly, etc)
E12.recode<-rep(0, 670)

#assign numerical values (edge weights) to frequencies
E12.recode[E12.value=="Yearly"]<-1
E12.recode[E12.value=="Seasonally"]<-2
E12.recode[E12.value=="Monthly"]<-3
E12.recode[E12.value=="Biweekly"]<-4
E12.recode[E12.value=="Weekly"]<-5

#do the same for institutions##############################

names(E12_inst)[1]<-"ID"
names(E12_inst)[2]<-"Site"

E12_inst.value<-rep(E12_inst[,4])
E12_inst.recode<-rep(0, 206)
E12_inst.recode[E12_inst.value=="Yearly"]<-1
E12_inst.recode[E12_inst.value=="Seasonally"]<-2
E12_inst.recode[E12_inst.value=="Monthly"]<-3
E12_inst.recode[E12_inst.value=="Biweekly"]<-4
E12_inst.recode[E12_inst.value=="Weekly"]<-5


E12_inst.var<-rep(E12_inst[,3])
E12_inst.contacts<-rep(0, 206)

E12_inst.contacts[E12_inst.var=="Hh_23e_1"]<-"Chief"
E12_inst.contacts[E12_inst.var=="Hh_23e_2"]<-"Farmers"
E12_inst.contacts[E12_inst.var=="Hh_23e_3"]<-"Neighbor/friend"
E12_inst.contacts[E12_inst.var=="Hh_23e_4"]<-"Weekly market vendor"
E12_inst.contacts[E12_inst.var=="Hh_23e_5"]<-"Urban vendor"
E12_inst.contacts[E12_inst.var=="Hh_23e_6"]<-"Vendor in agro-vet shop"
E12_inst.contacts[E12_inst.var=="Hh_23e_7"]<-"Teacher"
E12_inst.contacts[E12_inst.var=="Hh_23e_8"]<-"Religious leader"
E12_inst.contacts[E12_inst.var=="Hh_23e_9"]<-"Extension agent"
E12_inst.contacts[E12_inst.var=="Hh_23e_10"]<-"NGO agent"
E12_inst.contacts[E12_inst.var=="Hh_23e_11"]<-"Vet service provider"
E12_inst.contacts[E12_inst.var=="Hh_23e_12"]<-"Gvt parastatal"
E12_inst.contacts[E12_inst.var=="Hh_23e_13"]<-"Ag researcher"
E12_inst.contacts[E12_inst.var=="Hh_23e_14"]<-"Microfinance rep"
E12_inst.contacts[E12_inst.var=="Hh_23e_15"]<-"Tractor owner"
E12_inst.contacts[E12_inst.var=="Hh_23e_16"]<-"Farmer org. leader"
E12_inst.contacts[E12_inst.var=="Hh_23e_17"]<-"Women's org. leader"
E12_inst.contacts[E12_inst.var=="Hh_23e_18"]<-"Youth org. leader"
E12_inst.contacts[E12_inst.var=="Hh_23e_19"]<-"Local politican"
E12_inst.contacts[E12_inst.var=="Hh_23e_20"]<-"Other"

##change ID to word for gephi
E12_inst.id<-rep(E12_inst[,1])
E12_inst.idname<-rep(0, 206)

E12_inst.idname[E12_inst.id=="12001"]<-"Chief"
E12_inst.idname[E12_inst.id=="12002"]<-"Farmers"
E12_inst.idname[E12_inst.id=="12003"]<-"Neighbor/friend"
E12_inst.idname[E12_inst.id=="12004"]<-"Weekly market vendor"
E12_inst.idname[E12_inst.id=="12005"]<-"Urban vendor"
E12_inst.idname[E12_inst.id=="12006"]<-"Vendor in agro-vet shop"
E12_inst.idname[E12_inst.id=="12007"]<-"Teacher"
E12_inst.idname[E12_inst.id=="12008"]<-"Religious leader"
E12_inst.idname[E12_inst.id=="12009"]<-"Extension agent"
E12_inst.idname[E12_inst.id=="12010"]<-"NGO agent"
E12_inst.idname[E12_inst.id=="12011"]<-"Vet service provider"
E12_inst.idname[E12_inst.id=="12012"]<-"Gvt parastatal"
E12_inst.idname[E12_inst.id=="12013"]<-"Ag researcher"
E12_inst.idname[E12_inst.id=="12014"]<-"Microfinance rep"
E12_inst.idname[E12_inst.id=="12015"]<-"Tractor owner"
E12_inst.idname[E12_inst.id=="12016"]<-"Farmer org. leader"
E12_inst.idname[E12_inst.id=="12017"]<-"Women's org. leader"
E12_inst.idname[E12_inst.id=="12018"]<-"Youth org. leader"
E12_inst.idname[E12_inst.id=="12019"]<-"Local politican"
E12_inst.idname[E12_inst.id=="12020"]<-"Other"

E12_inst_weighted<-data.frame(id=E12_inst.idname,var=E12_inst.contacts,value=E12_inst.recode) # create a new dataframe that includes edge weights

write.table(E12_inst_weighted, "~/Documents/E12_inst.csv")

####

E12.var<-rep(E12[,3])
E12.contacts<-rep(0, 670)

E12.contacts[E12.var=="Hh_23e_1"]<-"Chief"
E12.contacts[E12.var=="Hh_23e_2"]<-"Farmers"
E12.contacts[E12.var=="Hh_23e_3"]<-"Neighbor/friend"
E12.contacts[E12.var=="Hh_23e_4"]<-"Weekly market vendor"
E12.contacts[E12.var=="Hh_23e_5"]<-"Urban vendor"
E12.contacts[E12.var=="Hh_23e_6"]<-"Vendor in agro-vet shop"
E12.contacts[E12.var=="Hh_23e_7"]<-"Teacher"
E12.contacts[E12.var=="Hh_23e_8"]<-"Religious leader"
E12.contacts[E12.var=="Hh_23e_9"]<-"Extension agent"
E12.contacts[E12.var=="Hh_23e_10"]<-"NGO agent"
E12.contacts[E12.var=="Hh_23e_11"]<-"Vet service provider"
E12.contacts[E12.var=="Hh_23e_12"]<-"Gvt parastatal"
E12.contacts[E12.var=="Hh_23e_13"]<-"Ag researcher"
E12.contacts[E12.var=="Hh_23e_14"]<-"Microfinance rep"
E12.contacts[E12.var=="Hh_23e_15"]<-"Tractor owner"
E12.contacts[E12.var=="Hh_23e_16"]<-"Farmer org. leader"
E12.contacts[E12.var=="Hh_23e_17"]<-"Women's org. leader"
E12.contacts[E12.var=="Hh_23e_18"]<-"Youth org. leader"
E12.contacts[E12.var=="Hh_23e_19"]<-"Local politican"
E12.contacts[E12.var=="Hh_23e_20"]<-"Other"

E12_weighted<-data.frame(id=E12[,1],var=E12.contacts,value=E12.recode) # create a new dataframe that includes edge weights

write.table(E12_weighted, "~/Documents/E12.csv")

##read in new farmer to farmer pairs created from python script

E12_newpairs_tmp = read.csv('/home/ndssl/Documents/csv_files_R/newpairsE12.csv', header=T)
E12_newpairs = data.frame(E12_newpairs_tmp$id, E12_newpairs_tmp$var, E12_newpairs_tmp$value)

names(E12_newpairs)[1] <- "id"
names(E12_newpairs)[2] <- "var"
names(E12_newpairs)[3] <- "value"

#combine the institutions and the new pairs into one data frame to write out to gephi
colnames(E12_inst_weighted) <- colnames(E12_newpairs)
E12_whole <- rbind(E12_newpairs, E12_inst_weighted)

g = graph.data.frame(E12_whole)
write.graph(g, "site12.graphml", format= "graphml")


#site13################################################################

questionE = data.frame(Combined[c(grep("Hh_23e_*", colnames(Combined)))], whole_data$hhrn, whole_data$Site) #create data frame with question e variables and identifying variables
E_melted13 = questionE[questionE$whole_data.Site == 13,]
E_melted13 = melt.data.frame(E_melted13, id.vars=c('whole_data.hhrn', 'whole_data.Site'))

##eliminate responses of "Never"
E13_tmp = E_melted13[E_melted13$value != "Never",]

#create variable of just the institutions, to then use to add edges to the graph
E13_inst = E13_tmp[E13_tmp$whole_data.hhrn <= 13021,]

##eliminate institutions for now in variable that will become csv file to write into python notebook and later gephi
E13 = E13_tmp[E13_tmp$whole_data.hhrn >= 210000,]


names(E13)[1]<-"ID"
names(E13)[2]<-"Site"

#need to add edge weights
#selects all edges from g graph (3rd column of E_melted11)
#need to weight these values, weakly being the most heavily weighted and yearly being the least heavily weighted

E13.value<-rep(E13[,4])  #E11.value is what will be used to assign numerical values to the frequency values (Monthly, etc)
E13.recode<-rep(0, 610)

#assign numerical values (edge weights) to frequencies
E13.recode[E13.value=="Yearly"]<-1
E13.recode[E13.value=="Seasonally"]<-2
E13.recode[E13.value=="Monthly"]<-3
E13.recode[E13.value=="Biweekly"]<-4
E13.recode[E13.value=="Weekly"]<-5

#do the same for institutions##############################

names(E13_inst)[1]<-"ID"
names(E13_inst)[2]<-"Site"

E13_inst.value<-rep(E13_inst[,4])
E13_inst.recode<-rep(0, 267)
E13_inst.recode[E13_inst.value=="Yearly"]<-1
E13_inst.recode[E13_inst.value=="Seasonally"]<-2
E13_inst.recode[E13_inst.value=="Monthly"]<-3
E13_inst.recode[E13_inst.value=="Biweekly"]<-4
E13_inst.recode[E13_inst.value=="Weekly"]<-5


E13_inst.var<-rep(E13_inst[,3])
E13_inst.contacts<-rep(0, 267)

E13_inst.contacts[E13_inst.var=="Hh_23e_1"]<-"Chief"
E13_inst.contacts[E13_inst.var=="Hh_23e_2"]<-"Farmers"
E13_inst.contacts[E13_inst.var=="Hh_23e_3"]<-"Neighbor/friend"
E13_inst.contacts[E13_inst.var=="Hh_23e_4"]<-"Weekly market vendor"
E13_inst.contacts[E13_inst.var=="Hh_23e_5"]<-"Urban vendor"
E13_inst.contacts[E13_inst.var=="Hh_23e_6"]<-"Vendor in agro-vet shop"
E13_inst.contacts[E13_inst.var=="Hh_23e_7"]<-"Teacher"
E13_inst.contacts[E13_inst.var=="Hh_23e_8"]<-"Religious leader"
E13_inst.contacts[E13_inst.var=="Hh_23e_9"]<-"Extension agent"
E13_inst.contacts[E13_inst.var=="Hh_23e_10"]<-"NGO agent"
E13_inst.contacts[E13_inst.var=="Hh_23e_11"]<-"Vet service provider"
E13_inst.contacts[E13_inst.var=="Hh_23e_12"]<-"Gvt parastatal"
E13_inst.contacts[E13_inst.var=="Hh_23e_13"]<-"Ag researcher"
E13_inst.contacts[E13_inst.var=="Hh_23e_14"]<-"Microfinance rep"
E13_inst.contacts[E13_inst.var=="Hh_23e_15"]<-"Tractor owner"
E13_inst.contacts[E13_inst.var=="Hh_23e_16"]<-"Farmer org. leader"
E13_inst.contacts[E13_inst.var=="Hh_23e_17"]<-"Women's org. leader"
E13_inst.contacts[E13_inst.var=="Hh_23e_18"]<-"Youth org. leader"
E13_inst.contacts[E13_inst.var=="Hh_23e_19"]<-"Local politican"
E13_inst.contacts[E13_inst.var=="Hh_23e_20"]<-"Other"

##change ID to word for gephi
E13_inst.id<-rep(E13_inst[,1])
E13_inst.idname<-rep(0, 267)

E13_inst.idname[E13_inst.id=="13001"]<-"Chief"
E13_inst.idname[E13_inst.id=="13002"]<-"Farmers"
E13_inst.idname[E13_inst.id=="13003"]<-"Neighbor/friend"
E13_inst.idname[E13_inst.id=="13004"]<-"Weekly market vendor"
E13_inst.idname[E13_inst.id=="13005"]<-"Urban vendor"
E13_inst.idname[E13_inst.id=="13006"]<-"Vendor in agro-vet shop"
E13_inst.idname[E13_inst.id=="13007"]<-"Teacher"
E13_inst.idname[E13_inst.id=="13008"]<-"Religious leader"
E13_inst.idname[E13_inst.id=="13009"]<-"Extension agent"
E13_inst.idname[E13_inst.id=="13010"]<-"NGO agent"
E13_inst.idname[E13_inst.id=="13011"]<-"Vet service provider"
E13_inst.idname[E13_inst.id=="13012"]<-"Gvt parastatal"
E13_inst.idname[E13_inst.id=="13013"]<-"Ag researcher"
E13_inst.idname[E13_inst.id=="13014"]<-"Microfinance rep"
E13_inst.idname[E13_inst.id=="13015"]<-"Tractor owner"
E13_inst.idname[E13_inst.id=="13016"]<-"Farmer org. leader"
E13_inst.idname[E13_inst.id=="13017"]<-"Women's org. leader"
E13_inst.idname[E13_inst.id=="13018"]<-"Youth org. leader"
E13_inst.idname[E13_inst.id=="13019"]<-"Local politican"
E13_inst.idname[E13_inst.id=="13020"]<-"Other"

E13_inst_weighted<-data.frame(id=E13_inst.idname,var=E13_inst.contacts,value=E13_inst.recode) # create a new dataframe that includes edge weights

write.table(E13_inst_weighted, "~/Documents/E13_inst.csv")

####

E13.var<-rep(E13[,3])
E13.contacts<-rep(0, 610)

E13.contacts[E13.var=="Hh_23e_1"]<-"Chief"
E13.contacts[E13.var=="Hh_23e_2"]<-"Farmers"
E13.contacts[E13.var=="Hh_23e_3"]<-"Neighbor/friend"
E13.contacts[E13.var=="Hh_23e_4"]<-"Weekly market vendor"
E13.contacts[E13.var=="Hh_23e_5"]<-"Urban vendor"
E13.contacts[E13.var=="Hh_23e_6"]<-"Vendor in agro-vet shop"
E13.contacts[E13.var=="Hh_23e_7"]<-"Teacher"
E13.contacts[E13.var=="Hh_23e_8"]<-"Religious leader"
E13.contacts[E13.var=="Hh_23e_9"]<-"Extension agent"
E13.contacts[E13.var=="Hh_23e_10"]<-"NGO agent"
E13.contacts[E13.var=="Hh_23e_11"]<-"Vet service provider"
E13.contacts[E13.var=="Hh_23e_12"]<-"Gvt parastatal"
E13.contacts[E13.var=="Hh_23e_13"]<-"Ag researcher"
E13.contacts[E13.var=="Hh_23e_14"]<-"Microfinance rep"
E13.contacts[E13.var=="Hh_23e_15"]<-"Tractor owner"
E13.contacts[E13.var=="Hh_23e_16"]<-"Farmer org. leader"
E13.contacts[E13.var=="Hh_23e_17"]<-"Women's org. leader"
E13.contacts[E13.var=="Hh_23e_18"]<-"Youth org. leader"
E13.contacts[E13.var=="Hh_23e_19"]<-"Local politican"
E13.contacts[E13.var=="Hh_23e_20"]<-"Other"

E13_weighted.tmp <-data.frame(id=E13[,1],var=E13.contacts,value=E13.recode) # create a new dataframe that includes edge weights
E13_weighted <- E13_weighted.tmp[c(-610),]

write.table(E13_weighted, "~/Documents/E13.csv")

##read in new farmer to farmer pairs created from python script

E13_newpairs_tmp = read.csv('/home/ndssl/Documents/csv_files_R/newpairsE13.csv', header=T)
E13_newpairs = data.frame(E13_newpairs_tmp$id, E13_newpairs_tmp$var, E13_newpairs_tmp$value)

names(E13_newpairs)[1] <- "id"
names(E13_newpairs)[2] <- "var"
names(E13_newpairs)[3] <- "value"

#combine the institutions and the new pairs into one data frame to write out to gephi
colnames(E13_inst_weighted) <- colnames(E13_newpairs)
E13_whole <- rbind(E13_newpairs, E13_inst_weighted)

g = graph.data.frame(E13_whole)
write.graph(g, "site13.graphml", format= "graphml")

#site 23#########################################################################

questionE = data.frame(Combined[c(grep("Hh_23e_*", colnames(Combined)))], whole_data$hhrn, whole_data$Site) #create data frame with question e variables and identifying variables
E_melted23 = questionE[questionE$whole_data.Site == 23,]
E_melted23 = melt.data.frame(E_melted23, id.vars=c('whole_data.hhrn', 'whole_data.Site'))

##eliminate responses of "Never"
E23_tmp = E_melted23[E_melted23$value != "Never",]

#create variable of just the institutions, to then use to add edges to the graph
E23_inst_tmp = E23_tmp[E23_tmp$whole_data.hhrn <= 23021,]
E23_inst = na.omit(E23_inst_tmp)
##eliminate institutions for now in variable that will become csv file to write into python notebook and later gephi
E23 = na.omit(E23_tmp[E23_tmp$whole_data.hhrn >= 230000,])


names(E23)[1]<-"ID"
names(E23)[2]<-"Site"

#need to add edge weights
#selects all edges from g graph (3rd column of E_melted11)
#need to weight these values, weakly being the most heavily weighted and yearly being the least heavily weighted

E23.value<-rep(E23[,4])  #E11.value is what will be used to assign numerical values to the frequency values (Monthly, etc)
E23.recode<-rep(0, 607)

#assign numerical values (edge weights) to frequencies
E23.recode[E23.value=="Yearly"]<-1
E23.recode[E23.value=="Seasonally"]<-2
E23.recode[E23.value=="Monthly"]<-3
E23.recode[E23.value=="Biweekly"]<-4
E23.recode[E23.value=="Weekly"]<-5

#do the same for institutions##############################

names(E23_inst)[1]<-"ID"
names(E23_inst)[2]<-"Site"

E23_inst.value<-rep(E23_inst[,4])
E23_inst.recode<-rep(0, 238)
E23_inst.recode[E23_inst.value=="Yearly"]<-1
E23_inst.recode[E23_inst.value=="Seasonally"]<-2
E23_inst.recode[E23_inst.value=="Monthly"]<-3
E23_inst.recode[E23_inst.value=="Biweekly"]<-4
E23_inst.recode[E23_inst.value=="Weekly"]<-5


E23_inst.var<-rep(E23_inst[,3])
E23_inst.contacts<-rep(0, 238)

E23_inst.contacts[E23_inst.var=="Hh_23e_1"]<-"Chief"
E23_inst.contacts[E23_inst.var=="Hh_23e_2"]<-"Farmers"
E23_inst.contacts[E23_inst.var=="Hh_23e_3"]<-"Neighbor/friend"
E23_inst.contacts[E23_inst.var=="Hh_23e_4"]<-"Weekly market vendor"
E23_inst.contacts[E23_inst.var=="Hh_23e_5"]<-"Urban vendor"
E23_inst.contacts[E23_inst.var=="Hh_23e_6"]<-"Vendor in agro-vet shop"
E23_inst.contacts[E23_inst.var=="Hh_23e_7"]<-"Teacher"
E23_inst.contacts[E23_inst.var=="Hh_23e_8"]<-"Religious leader"
E23_inst.contacts[E23_inst.var=="Hh_23e_9"]<-"Extension agent"
E23_inst.contacts[E23_inst.var=="Hh_23e_10"]<-"NGO agent"
E23_inst.contacts[E23_inst.var=="Hh_23e_11"]<-"Vet service provider"
E23_inst.contacts[E23_inst.var=="Hh_23e_12"]<-"Gvt parastatal"
E23_inst.contacts[E23_inst.var=="Hh_23e_13"]<-"Ag researcher"
E23_inst.contacts[E23_inst.var=="Hh_23e_14"]<-"Microfinance rep"
E23_inst.contacts[E23_inst.var=="Hh_23e_15"]<-"Tractor owner"
E23_inst.contacts[E23_inst.var=="Hh_23e_16"]<-"Farmer org. leader"
E23_inst.contacts[E23_inst.var=="Hh_23e_17"]<-"Women's org. leader"
E23_inst.contacts[E23_inst.var=="Hh_23e_18"]<-"Youth org. leader"
E23_inst.contacts[E23_inst.var=="Hh_23e_19"]<-"Local politican"
E23_inst.contacts[E23_inst.var=="Hh_23e_20"]<-"Other"

##change ID to word for gephi
E23_inst.id<-rep(E23_inst[,1])
E23_inst.idname<-rep(0, 238)

E23_inst.idname[E23_inst.id=="23001"]<-"Chief"
E23_inst.idname[E23_inst.id=="23002"]<-"Farmers"
E23_inst.idname[E23_inst.id=="23003"]<-"Neighbor/friend"
E23_inst.idname[E23_inst.id=="23004"]<-"Weekly market vendor"
E23_inst.idname[E23_inst.id=="23005"]<-"Urban vendor"
E23_inst.idname[E23_inst.id=="23006"]<-"Vendor in agro-vet shop"
E23_inst.idname[E23_inst.id=="23007"]<-"Teacher"
E23_inst.idname[E23_inst.id=="23008"]<-"Religious leader"
E23_inst.idname[E23_inst.id=="23009"]<-"Extension agent"
E23_inst.idname[E23_inst.id=="23010"]<-"NGO agent"
E23_inst.idname[E23_inst.id=="23011"]<-"Vet service provider"
E23_inst.idname[E23_inst.id=="23012"]<-"Gvt parastatal"
E23_inst.idname[E23_inst.id=="23013"]<-"Ag researcher"
E23_inst.idname[E23_inst.id=="23014"]<-"Microfinance rep"
E23_inst.idname[E23_inst.id=="23015"]<-"Tractor owner"
E23_inst.idname[E23_inst.id=="23016"]<-"Farmer org. leader"
E23_inst.idname[E23_inst.id=="23017"]<-"Women's org. leader"
E23_inst.idname[E23_inst.id=="23018"]<-"Youth org. leader"
E23_inst.idname[E23_inst.id=="23019"]<-"Local politican"
E23_inst.idname[E23_inst.id=="23020"]<-"Other"
E23_inst.idname[E23_inst.id=="23021"]<-"Other"

E23_inst_weighted<-data.frame(id=E23_inst.idname,var=E23_inst.contacts,value=E23_inst.recode) # create a new dataframe that includes edge weights

write.table(E23_inst_weighted, "~/Documents/E23_inst.csv")

####

E23.var<-rep(E23[,3])
E23.contacts<-rep(0, 607)

E23.contacts[E23.var=="Hh_23e_1"]<-"Chief"
E23.contacts[E23.var=="Hh_23e_2"]<-"Farmers"
E23.contacts[E23.var=="Hh_23e_3"]<-"Neighbor/friend"
E23.contacts[E23.var=="Hh_23e_4"]<-"Weekly market vendor"
E23.contacts[E23.var=="Hh_23e_5"]<-"Urban vendor"
E23.contacts[E23.var=="Hh_23e_6"]<-"Vendor in agro-vet shop"
E23.contacts[E23.var=="Hh_23e_7"]<-"Teacher"
E23.contacts[E23.var=="Hh_23e_8"]<-"Religious leader"
E23.contacts[E23.var=="Hh_23e_9"]<-"Extension agent"
E23.contacts[E23.var=="Hh_23e_10"]<-"NGO agent"
E23.contacts[E23.var=="Hh_23e_11"]<-"Vet service provider"
E23.contacts[E23.var=="Hh_23e_12"]<-"Gvt parastatal"
E23.contacts[E23.var=="Hh_23e_13"]<-"Ag researcher"
E23.contacts[E23.var=="Hh_23e_14"]<-"Microfinance rep"
E23.contacts[E23.var=="Hh_23e_15"]<-"Tractor owner"
E23.contacts[E23.var=="Hh_23e_16"]<-"Farmer org. leader"
E23.contacts[E23.var=="Hh_23e_17"]<-"Women's org. leader"
E23.contacts[E23.var=="Hh_23e_18"]<-"Youth org. leader"
E23.contacts[E23.var=="Hh_23e_19"]<-"Local politican"
E23.contacts[E23.var=="Hh_23e_20"]<-"Other"


E23_weighted<-data.frame(id=E23[,1],var=E23.contacts,value=E23.recode) # create a new dataframe that includes edge weights

write.table(E23_weighted, "~/Documents/E23.csv")

##read in new farmer to farmer pairs created from python script

E23_newpairs_tmp = read.csv('/home/ndssl/Documents/csv_files_R/newpairsE23.csv', header=T)
E23_newpairs = data.frame(E23_newpairs_tmp$id, E23_newpairs_tmp$var, E23_newpairs_tmp$value)

names(E23_newpairs)[1] <- "id"
names(E23_newpairs)[2] <- "var"
names(E23_newpairs)[3] <- "value"

#combine the institutions and the new pairs into one data frame to write out to gephi
colnames(E23_inst_weighted) <- colnames(E23_newpairs)
E23_whole <- rbind(E23_newpairs, E23_inst_weighted)

g = graph.data.frame(E23_whole)
write.graph(g, "site23.graphml", format= "graphml")

#######################################################################

##ideas for how to examine output from initial simulations (these simulations did not have the proper parameters set, used SI model)

#data frame = site11
#want columns 1, 2, 3, 5

site11_run02_tmp = read.csv('/home/ndssl/Documents/run02/site11graph.out', header=T)
library(reshape2)

site11_run02_whole = colsplit(site11_run02_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_run02 = data.frame(site11_run02_whole$id, site11_run02_whole$iter, site11_run02_whole$tstep, site11_run02_whole$state)
names(site11_run02)[1]<-'id'
names(site11_run02)[2]<-'iter'
names(site11_run02)[3]<-'tstep'
names(site11_run02)[4]<-'state'

susceptible = site11_run02[site11_run02$state==0,]

y = which(site11_run02$state == 1) #y-axis
#x-axis should be timestep

library(epitools)

#attach(site11_run02)
x = tstep
plot(x, state)
points(x[iter==1], state[iter==1], col="blue")

write.table(site11_run02,file="site11_run02.csv",sep=",",row.names=F)


library(Epi)

stat.table(tstep, data=site11_run02)
#cross-tabulation
stat.table(list(tstep, state), data=site11_run02)
iterations <- transform(site11_run02,iters=cut(iter, breaks=c(0:50), right=FALSE))
stat.table(agegrp,data=births)


barplot(table(site11_run02$tstep, which(site11_run02$state == 1,)))

library(epicalc)

iter0 = site11_run02[iter=="0",]
#attach(iter0)
plot(iter0$tstep[state=="0"], iter0$Freq[state=="0"], xlab="Timestep", ylab="Infected nodes")

x = data.frame(table(site11_run02$iter, site11_run02$state))
names(x) <- c('iter', "state", "freq")
x

table = table(site11_run02$tstep, site11_run02$state)
barplot(table, main="Infected nodes by timestep", xlab="timestep", ylab="Number of infected nodes", col=c("darkblue","red"), beside=TRUE)

#want each iteration separately

run02.iter0 = site11_run02[site11_run02$iter == 0,]
run02.iter1 = site11_run02[site11_run02$iter == 1,]
run02.iter2 = site11_run02[site11_run02$iter == 2,]
run02.iter3 = site11_run02[site11_run02$iter == 3,]

#melt to only include nodes in state 1

inf.run02.0 = run02.iter0[run02.iter0$state != 0,]
inf.run02.1 = run02.iter1[run02.iter1$state != 0,]
inf.run02.2 = run02.iter2[run02.iter2$state != 0,]
inf.run02.3 = run02.iter3[run02.iter3$state != 0,]

#count the number of nodes that changed state at each timestep
count(inf.run02.0$tstep == 30)

#use that command to somehow make a graph of each timestep at each iteration?
#if TRUE, plot or chart that number 

table(inf.run02.0$tstep, inf.run02.0$state)
test = table(inf.run02.0$tstep, inf.run02.0$state)

test1 = survfit(Surv(run02.iter0$tstep, run02.iter0$state) ~1)
test2 = survfit(Surv(run02.iter1$tstep, run02.iter1$state) ~1)
test3 = survfit(Surv(run02.iter2$tstep, run02.iter2$state) ~1)
test4 = survfit(Surv(run02.iter3$tstep, run02.iter3$state) ~1)


plot(test1, main="Seed: NGO", xlab="timestep", ylab="survival function", col="red")
lines(test2, col="blue")
lines(test3, col="green")
lines(test4, col="orange")

#overall title
title("Site 11, Run 02, iter 0:3: Kaplan-Meier estimate with 95% confidence bounds", outer=TRUE)

#could do for whole iteration
test5 = survfit(Surv(site11_run02$tstep, site11_run02$state) ~1)
plot(test5)

#import csvs from other sites, plot on same graph
site11_run03_tmp = read.csv('/home/ndssl/Documents/run03/site11graph.out', header=T)

site11_run03_whole = colsplit(site11_run03_tmp[,1], " ", c("id", "iter", "tstep", "na", "state", "thresh"))
site11_run03 = data.frame(site11_run03_whole$id, site11_run03_whole$iter, site11_run03_whole$tstep, site11_run03_whole$state)
names(site11_run03)[1]<-'id'
names(site11_run03)[2]<-'iter'
names(site11_run03)[3]<-'tstep'
names(site11_run03)[4]<-'state'
test_03 = survfit(Surv(site11_run03$tstep, site11_run03$state) ~1)
plot(test_03)
lines(test_03)

which(site11_run03$state == 1)



##########################################

#epicurve.table(x=site11_run02$tstep, y=which(site11_run02$state == 1,), width = 1, space = 0, tick = TRUE, tick.offset = 0.5, segments = FALSE)

library(epicalc)

iter0 = site11[iter=="0",]
attach(iter0)
plot(tstep[state=="0"], Freq[state=="0"], xlab="Timestep", ylab="Infected nodes")

x = data.frame(table(site11$iter, site11$state))
names(x) <- c('iter', "state", "freq")
x

table = table(site11$tstep, site11$state)
barplot(table, main="Infected nodes by timestep", xlab="timestep", ylab="Number of infected nodes", col=c("darkblue","red"), beside=TRUE)

names(site11.run16) <- c("id", "iter", "tstep", "na", "state", "thresh")

#want each iteration separately

run16.iter0 = site11.run16[site11.run16$iter == 0,]
run16.iter1 = site11.run16[site11.run16$iter == 1,]
run16.iter2 = site11.run16[site11.run16$iter == 2,]
run16.iter3 = site11.run16[site11.run16$iter == 3,]

#melt to only include nodes in state 1

inf.run16.0 = run16.iter0[run16.iter0$state != 0,]
inf.run16.1 = run16.iter1[run16.iter1$state != 0,]
inf.run16.2 = run16.iter2[run16.iter2$state != 0,]
inf.run16.3 = run16.iter3[run16.iter3$state != 0,]

#count the number of nodes that changed state at each timestep
count(inf.run16.0$tstep == 30)

#use that command to somehow make a graph of each timestep at each iteration?
#if TRUE, plot or chart that number 

table(inf.run16.0$tstep, inf.run16.0$state)
test = table(inf.run16.0$tstep, inf.run16.0$state)

test1 = survfit(Surv(run16.iter0$tstep, run16.iter0$state) ~1)
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

#################################################################################################

##look at farmer to farmer contact


#determining edge weights
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


count(farmer12$Hh_23e_2 == 0)
count(farmer12$Hh_23e_2 == 1)
count(farmer12$Hh_23e_2 == 2)
count(farmer12$Hh_23e_2 == 3)
count(farmer12$Hh_23e_2 == 4)
count(farmer12$Hh_23e_2 == 5)

count(neighbor12$Hh_23e_3 == 0)
count(neighbor12$Hh_23e_3 == 1)
count(neighbor12$Hh_23e_3 == 2)
count(neighbor12$Hh_23e_3 == 3)
count(neighbor12$Hh_23e_3 == 4)
count(neighbor12$Hh_23e_3 == 5)

farmertofarmer12 <- matrix(c(18, 69, 7, 5, 17, 1, 42, 45, 4, 2, 24, 0),ncol=6,byrow=TRUE)
rownames(farmertofarmer12) <- c("Other farmers", "Neighbors/Friends")
colnames(farmertofarmer12) <- c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly")

count(farmer13$Hh_23e_2 == 0)
count(farmer13$Hh_23e_2 == 1)
count(farmer13$Hh_23e_2 == 2)
count(farmer13$Hh_23e_2 == 3)
count(farmer13$Hh_23e_2 == 4)
count(farmer13$Hh_23e_2 == 5)

count(neighbor13$Hh_23e_3 == 0)
count(neighbor13$Hh_23e_3 == 1)
count(neighbor13$Hh_23e_3 == 2)
count(neighbor13$Hh_23e_3 == 3)
count(neighbor13$Hh_23e_3 == 4)
count(neighbor13$Hh_23e_3 == 5)

farmertofarmer13 <- matrix(c(34, 39, 6, 6, 18, 1, 56, 29, 5, 3, 10, 0),ncol=6,byrow=TRUE)
rownames(farmertofarmer13) <- c("Other farmers", "Neighbors/Friends")
colnames(farmertofarmer13) <- c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly")

count(farmer23$Hh_23e_2 == 0)
count(farmer23$Hh_23e_2 == 1)
count(farmer23$Hh_23e_2 == 2)
count(farmer23$Hh_23e_2 == 3)
count(farmer23$Hh_23e_2 == 4)
count(farmer23$Hh_23e_2 == 5)

count(neighbor23$Hh_23e_3 == 0)
count(neighbor23$Hh_23e_3 == 1)
count(neighbor23$Hh_23e_3 == 2)
count(neighbor23$Hh_23e_3 == 3)
count(neighbor23$Hh_23e_3 == 4)
count(neighbor23$Hh_23e_3 == 5)

farmertofarmer23 <- matrix(c(42, 35, 5, 6, 17, 0, 47, 25, 7, 6, 19, 1),ncol=6,byrow=TRUE)
rownames(farmertofarmer23) <- c("Other farmers", "Neighbors/Friends")
colnames(farmertofarmer23) <- c("Never", "Weekly", "Biweekly", "Monthly", "Seasonally", "Yearly")

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
reg_ind11_wealth = data.frame(reg_ind11$ID_number, reg_ind11$wealth_index)

new_reg_ind11_wealth = reg_ind11_wealth[c(-24,-30,-67,-85),]
#create new dataframe of both sets of unique ids, wealth index, and number of contacts, eliminating those rows that only appear in wealth frame

names(reg_ind11_wealth)[1] <- "ID"
names(reg_ind11_wealth)[2] <- "Wealth"

x <- cbind(num_contacts.E11, new_reg_ind11_wealth)

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


####################################################################################
#multinomial distribution

library(MASS)

belief.table11 = (table(Tillage11$beliefs))/88
#divide each of the values in the total by the sum of all responses

belief.prob11 = c(0.07954545, 0.25000000, 0.27272727, 0.29545455, 0.10227273)
chisq.test(belief.table11, p=belief.prob11) 


#####################################################################################

#generate random numbers to use as seed nodes in simulations

#site11_random
sample(0:88, 3, replace=F)

#site12_random 
sample(0:93, 3, replace=F)

#site13_random
sample(0:79, 3, replace=F)

#site23_random
sample(0:79, 3, replace=F)
sample(0:93, 3, replace=F)