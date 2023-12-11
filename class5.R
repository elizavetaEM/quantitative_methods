library(corrplot)
library(wooldridge)

View(wage1)

data_w <- wage1[ ,1:4]

data_w_cor <- cor(data_w)

corrplot(data_w_cor)

corrplot(data_w_cor, 
         method = "number", 
         type = "upper")

# only female

data_w3 <- wage1[ wage1$female==1, 1:4]
data_w3

data_w3_cor <- cor(data_w3)

corrplot(data_w3_cor)

corrplot(data_w3_cor, 
         method = "number", 
         type = "upper")