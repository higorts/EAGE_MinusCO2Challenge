library(xlsx)
library(readxl)

dados <- as.data.frame(read_excel("windfarms -  north sea.xlsx", sheet = "Planilha3"))

dist <- 200000
cap <- 360
depth <- 380
year <- 2020

turb_model <- lm(turb~dist+cap+prof+ano, data = dados)
summary(turb_model)
data_set_turb <- data.frame('dist'=dist, 'cap'=cap, 'prof'=depth, 'ano'=year)
pred_turb <- predict.lm(turb_model, data_set_turb)
pred_turb

cost_model <- lm(custo~dist+cap+turb+prof+ano, data = dados)
summary(cost_model)
data_set_cost <- data.frame('dist'=dist, 'cap'=cap, 'turb'=pred_turb, 'prof'=depth, 'ano'=year )
pred_cost <- predict.lm(cost_model, data_set_cost)
pred_cost
