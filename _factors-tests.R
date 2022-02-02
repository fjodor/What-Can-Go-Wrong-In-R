#### Invalid factor level ####

f <- factor(letters[1:4])
f

f[5] <- "e"


#### Merging data with factors: works fine ####

df1 <- data.frame(
  a = factor(letters[1:5])
)

df2 <- data.frame(
  a = factor(letters[6:10])
)

df12 <- merge(df1, df2, all = TRUE)
str(df12)

df12 <- rbind(df1, df2)
str(df12)

df12 <- dplyr::bind_rows(df1, df2)
str(df12)
# works all fine


#----------------------------------#
#### c() on factors: works fine ####

f1 <- factor(letters[1:3])
f2 <- factor(1:3)
c(f1, f2)
# works fine


#------------------------------#
#### Recoding factors to numeric ####

f <- factor(6:10)
as.numeric(f)
as.numeric(as.character(f))

# Recommended alternative in documentation ?factor:
as.numeric(levels(f))[f]


#### Recoding factor levels wrongly ####

winners <- c("Susan", "Michael", "Susan", "Susan", "Susan")
str(winners)
winners

winners <- as.factor(winners)
winners

levels(winners) <- c("Suze", "Mike")
winners
