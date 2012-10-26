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
E11 = E_melted11[E_melted11$value != "Never",]

names(E11)[1]<-"ID"
names(E11)[2]<-"Site"

#need to add edge weights
#selects all edges from g graph (3rd column of E_melted11)
#need to weight these values, weakly being the most heavily weighted and yearly being the least heavily weighted

attach(E_melted11)
E11.value<-rep(E11[,4])  #E11.value is what will be used to assign numerical values to the frequency values (Monthly, etc)
E11.recode<-rep(0, 437)

#assign numerical values (edge weights) to frequencies
E11.recode[E11.value=="Yearly"]<-1
E11.recode[E11.value=="Seasonally"]<-2
E11.recode[E11.value=="Monthly"]<-3
E11.recode[E11.value=="Biweekly"]<-4
E11.recode[E11.value=="Weekly"]<-5

E11.var<-rep(E11[,3])
E11.contacts<-rep(0, 437)

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

E11_newpairs = read.csv('/home/ndssl/newpairsE11.csv', header=T)


g = graph.data.frame(E11_weighted)


write.graph(g, "site11.graphml", format= "graphml")



#site 12

questionE = data.frame(Combined[c(grep("Hh_23e_*", colnames(Combined)))], whole_data$hhrn, whole_data$Site) #create data frame with question e variables and identifying variables
E_melted12 = questionE[questionE$whole_data.Site == 12,]
E_melted12 = melt.data.frame(E_melted12, id.vars=c('whole_data.hhrn', 'whole_data.Site'))
E_melted12 = data.frame(E_melted12$whole_data.hhrn, E_melted12$variable, E_melted12$value)

colnames(E_melted12)[which(E_melted12[1,]>0)]
attach(E_melted12)
E12 = E_melted12[E_melted12.value != "Never",]

#need to add edge weights
E(g)$E_melted12.value #selects all edges from g graph (3rd column of E_melted11)
#need to weight these values, weakly being the most heavily weighted and yearly being the least heavily weighted

E12.value<-rep(E12[,3])  #E11.value is what will be used to assign numerical values to the frequency values (Monthly, etc)
E12.recode<-rep(0, 929)

#assign numerical values (edge weights) to frequencies
E12.recode[E12.value=="Yearly"]<-1
E12.recode[E12.value=="Seasonally"]<-2
E12.recode[E12.value=="Monthly"]<-3
E12.recode[E12.value=="Biweekly"]<-4
E12.recode[E12.value=="Weekly"]<-5

E12.var<-rep(E12[,2])
E12.contacts<-rep(0, 929)

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

E(g)$weight <- E(g)$value

g = graph.data.frame(E12_weighted)
write.graph(g, "site12.graphml", format= "graphml")

#site13

questionE = data.frame(Combined[c(grep("Hh_23e_*", colnames(Combined)))], whole_data$hhrn, whole_data$Site) #create data frame with question e variables and identifying variables
E_melted13 = questionE[questionE$whole_data.Site == 13,]
E_melted13 = melt.data.frame(E_melted13, id.vars=c('whole_data.hhrn', 'whole_data.Site'))
E_melted13 = data.frame(E_melted13$whole_data.hhrn, E_melted13$variable, E_melted13$value)

colnames(E_melted13)[which(E_melted13[1,]>0)]
attach(E_melted13)
E13 = E_melted13[E_melted13.value != "Never",]

E13.value<-rep(E13[,3])  #E11.value is what will be used to assign numerical values to the frequency values (Monthly, etc)
E13.recode<-rep(0, 914)

#assign numerical values (edge weights) to frequencies
E13.recode[E13.value=="Yearly"]<-1
E13.recode[E13.value=="Seasonally"]<-2
E13.recode[E13.value=="Monthly"]<-3
E13.recode[E13.value=="Biweekly"]<-4
E13.recode[E13.value=="Weekly"]<-5

E13.var<-rep(E13[,2])
E13.contacts<-rep(0, 914)

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

E13_weighted<-data.frame(id=E13[,1],var=E13.contacts,value=E13.recode) # create a new dataframe that includes edge weights

E(g)$weight <- E(g)$value

g = graph.data.frame(E13_weighted)
write.graph(g, "site13.graphml", format= "graphml")

#site 23

questionE = data.frame(Combined[c(grep("Hh_23e_*", colnames(Combined)))], whole_data$hhrn, whole_data$Site) #create data frame with question e variables and identifying variables
E_melted23 = questionE[questionE$whole_data.Site == 23,]
E_melted23 = melt.data.frame(E_melted23, id.vars=c('whole_data.hhrn', 'whole_data.Site'))
E_melted23 = data.frame(E_melted23$whole_data.hhrn, E_melted23$variable, E_melted23$value)

colnames(E_melted23)[which(E_melted23[1,]>0)]
attach(E_melted23)
E23 = E_melted23[E_melted23.value != "Never",]

E23.value<-rep(E23[,3])  #E11.value is what will be used to assign numerical values to the frequency values (Monthly, etc)
E23.recode<-rep(0, 909)

E23.value("Yearly")<-1
E23.value=="Seasonally"<-2
E23.value=="Monthly"]<-3
E23.value=="Biweekly"]<-4
E23.value=="Weekly"]<-5

#assign numerical values (edge weights) to frequencies
E23.recode[E23.value=="Yearly"]<-1
E23.recode[E23.value=="Seasonally"]<-2
E23.recode[E23.value=="Monthly"]<-3
E23.recode[E23.value=="Biweekly"]<-4
E23.recode[E23.value=="Weekly"]<-5

E23.var<-rep(E23[,2])
E23.contacts<-rep(0, 909)

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

E23_weighted<-data.frame(id=E23[,1],var=E23.contacts,value=E23.recode)


g = graph.data.frame(E23_new)
write.graph(g, "site23.graphml", format= "graphml")

write.table(E23_new, "~/Desktop/Workstuff/E23.csv")

#######################################################################

##ideas for how to examine output from initial simulations (these simulations did not have the proper parameters set, used SI model)

#data frame = site11
#want columns 1, 2, 3, 5

names(site11) <- c("id", "iter", "tstep", "na", "state", "thresh")

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
