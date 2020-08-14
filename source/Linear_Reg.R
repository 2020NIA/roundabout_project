getwd()

setwd('C:/Users/Admin/Desktop/회전교차로 프로젝트/데이터')

df = read.csv('train.csv')
str(df)

df$sign = as.character(df$sign)
df$school = as.character(df$school)
df$roundabout = as.character(df$roundabout)

fit = lm(formula = accident~cctv+sign+speed+peek_speed+car+bus+truck+type+school+roundabout, data=df)

summary(fit)



fit1 = lm(formula = accident~cctv+sign+type+school+roundabout, data =df)
summary(fit1)
