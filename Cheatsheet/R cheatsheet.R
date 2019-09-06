#Fizzbuzz Problem #### 
#Write a short script that prints each number from 1 to 100 on a new line. For each multiple of 3, print “Fizz” instead of the number. For each multiple of 5, print “Buzz” instead of the number. For numbers which are multiples of both 3 and 5, print “FizzBuzz” instead of the number. (HINT: For loop and Conditionals)
for (i in 100) {
  if (i%%3 == 0 & i%%5 == 0){
    print('FizzBuzz')
  }
  else if ( i%%3 == 0) {
    print ('Fizz')
  }
  else if (i%%5 == 0) {
    print('Buzz')
  }
  else {
    print(i)
  }
}


# Missing value####
Name <- c("John", "Tim", NA)
Sex <- c("men", NA, "women")
Age <- c(45, 53, NA)
dt <- data.frame(Name, Sex, Age)
is.na(dt)
sum(is.na(dt))
mean(is.na(dt)) #percentage of missing data
dt$Age[dt$Age == 99] <- NA  # (When you import dataset from other statistical
#applications the missing values might be coded with a number, for example 99.
#In order to let R know that is a missing value you need to recode it.)
!complete.cases(dt)
dt[!complete.cases(dt),] # list rows of data that have missing values 
is.na(dt$Name)
is.na(dt[,2])
which(is.na(dt)) #竖着数的
colSums(is.na(dt))
unique (unlist (lapply (your.data.frame, function (x) which (is.na (x))))) #To find all the rows in a data frame with at least one NA

# Handle Missling value
na.omit(dt) # delete incomplete observations
na.exclude(dt)# delete incomplete observations
dt[complete.cases(dt),] # subset with complete.cases to get complete cases
df[!complete.cases(dt),] #subset with `!` operator to get incomplete cases
na.pass(dt) #take no action
na.fail(dt) #Stop if any missing values are encountered
na.tree.replace #(library (tree): For discrete variables, adds a new category called "NA" to replace the missing values.
na.gam.replace # (library gam): Operates on discrete variables like na.tree.replace(); for numerics, NAs are replaced by the mean of the non-missing entries.






# 1 ####
available.packges( )
Install.packages ('ggplot2')
library(ggplot2)
Class('hello world')
?lm
help(seq)
shift+control +1 # 放大显示 source 再按一次还原
example("apply")  #Explore usage examples of the function 
RSiteSearch("lm") # Search lm as a keyword in the online documentation.


#Type conversion ####
as.integer(5.6)
as.character(5.6)


# Create vectors ####
c(1,2,3,4)
x=c(1:4)
c(x,x)

seq(1,10)
seq(1:10)
seq(1,10,by = 2)
seq(1,10,length = 5)

rnorm(10) # default mean 0 and standard deviation 1
runif(5) # default min 0 and max 1

sample(x=c('A','B'),size = 10,replace = TRUE) # sample draws a sample randmoly from a vector

rep(0,10)
rep(c(1,2,3),5)
rep(c(1,2,3),c(3,5,1))

# Vector Slicing ####
x = c(0,2,6,4)
x[1]
x[c(1,3)]
x[(1:3)]
x[seq(1,4,by =2)]
x[c(T,F,T,T)]
x[c(-2,-4)] # all elements excepts 第二个和第四个


# Modifying a Vector ####
v = 10:15
v[1] = 20 
v[2:3] = c(21,22) # we can modify an element of a vector using direct assignment
names(v) = c ('a','b','c','d','e','f')
v
v['a']

# Vector Computaion ####
c(1,2,3,4)+ c(5,6,7,8)
c(1,2,3,4) +1 
c(1,2,3,4)+ c(1,2) # same as + c(1,2,1,2)

c(1,2,3,4) >= c(34,56,3,5) # logical operations

x=c(1,2,3,4)
exp(x)
mean(x)
max(x)
min(x)
sd(x)
length(x)
summary(x)

# Missing and Null vaules ####
 temp = c(27,29,23,14,NA)
mean(temp)
mean(temp,na.rm = TRUE)

# Matrix ####
my_mat= matrix(data = 1:12,nrow = 4,ncol = 3 )

v=1:12
dim(v)=c(4,3)

vector1 <- 1:4
vector2 <- 5:8
vector3 <- 9:12
cbind(vector1, vector2, vector3)

rbind() #works analogously for concatenating rows.

my_mat[1, 1:3] # first row, all 
my_mat[c(1,3), c(1, 2)]
my_mat[-1, ] # omit first row; all columns

my_mat[ , 2, drop=F] # if we want to keep its matrix structure, we can specify drop=F

my_mat[,3] <- c(20,21,22,23) # modifying a matrix by assignment

summary(my_mat)
max(my_mat)
min(my_mat)
mean(my_mat)

# Arrays ####
a = array(1:24,dim = c(3,4,2))


# Data Frames ####
 
city = c('Seattle', 'Chicago', 'Boston', 'Houston')
temp = c(78, 74, 50, 104)
citydf=data.frame(CITY1 = city,TEMP1 = temp)
citydf[order(citydf$temp),]
order(citydf$temp, decreasing=TRUE)

# Exporting and importing Data Frames from files ####

write.table(citydf, file='my_data.csv', sep=',',row.names=F)
write.csv(citydf, file='my_data.csv', row.names=F)
read.table('my_data.csv', header=T, sep=',')


# List ####

employee = list(Name='John', Position='cashier',
                Salary=9.50)

student <- list(Name="Peter", Classes = c("Bio101",
                                          "Psych200", "CS125"))


employee[-1] # all elements except Name
employee[[1]]
employee$Name = NULL # remove an element


sapply(v,f) #sample apply, 结果是 vector  
v = 1:4
sapply(v, sqrt)

lapply(mylist, mean) # The lapply() function is similar to sapply but it returns the values in list form instead.


mat = matrix(1:6, nrow=2, ncol=3)
mat
apply(mat, 1, sum) # across rows
apply(mat, 2, sum) # across columns
apply(mat,1,paste,sep= '-')
# Character Manipulation ####
fruit = 'apple orange grape banana'
nchar(fruit)

strsplit(fruit, split=' ')
fruitvec = strsplit(fruit, split=' ')[[1]] #Creating a vector from the returned list
print(fruitvec)

paste(fruitvec, c('A', 'B', 'C'), sep='::')

paste(fruitvec, c('A', 'B'), sep=':', collapse='@')

fruit = 'apple orange grape banana'
substr(fruit, 1, 5)


gsub('a', '?', fruit)


grep('grape', fruitvec) #Pattern matching; find strings that contain a certain pattern in a vector


# factor and levels####
vec1 = factor(rep(c(0,1,3), c(4,6,2)))
vec1
levels(vec1) = c("male", "female", "male")
vec1



# Conditional  ####
# else if ####
if (num %% 2 != 0) {
  cat(num, 'is odd')
} else if (num == 0) {
  cat(num, 'is even, although you may not realize it.')
} else {
  cat(num, 'is even')
}

#Multiple Conditionals ifelse ####

num = 1:6
ifelse(num %% 2 == 0, 'even', 'odd') # The result of an ifelse call has the same length as the first argument, and the other arguments are expanded or shrunken (“recycled”) as necessary.

set.seed(1) #To ensure reproducible results. 
age = sample(0:100, 20, replace=TRUE)  # replace =True 拿出来还可以放回去重新拿
res = ifelse(age > 70, 'old', ifelse(age <= 30,
                                     'young', 'middle'))

example('switch') # 这个更快 switch(i, e1, e2, ...) is almost the same as c(e1, e2, ...)[i], but with one important difference: The switch statement evaluates only ei, whereas the c(...)[i] call evaluates all the expressions.
Grade=c(75,93,88,80,99,75,76,92)
Choice = 'A'
switch (Choice,
        'A' = Grade[Grade > 90],
        'B'= Grade[80<Grade& Grade<89],
        'C'= Grade[70<Grade& Grade<79]
)

# For Loops ####

sign_data = read.csv('TimesSquareSignage.csv', header = TRUE)
for (x in sign_data$Width) {
  if (is.na(x)) {
    cat('WARNING: Missing width\n')
  }
}


sign_data = read.csv('TimesSquareSignage.csv', header = TRUE)
obs = nrow(sign_data)
for (i in 1:obs) {
  # iterate over vector c(1, 2, ..., obs)
  if (is.na(sign_data$Width[i])) {
    cat('WARNING: Missing width for sign no.', i, '\n')
  }
}

# While Loops ####

#while (terminating condition) { body}
#The terminating condition is checked when the loop starts; if it is TRUE, the body is executed. Then, the condition is checked again; it continues in this way until the condition becomes FALSE.
i = 1
while (i <= obs) {
  if (is.na(sign_data$Width[i])) {
    cat('WARNING: Missing width for sign no.', i, '\n')
  }
  i = i + 1
}

# Break

sum = 0
number = 1
while (TRUE) {
  #This creates an infinite loop...
  #...but the break statement saves us!
  if (sum > 10) {
    break
  }
  sum = sum + number
  number = number + 1
  print(paste("sum is:", sum, "number is:", number))
}

# prime number checker
prime.checker = function(x) {
  if (x %in% c(2, 3, 5, 7))
    return(TRUE)
  if (x %% 2 == 0 | x == 1)
    return(FALSE)
  xsqrt = round(sqrt(x))
  xseq = seq(from = 3, to = xsqrt, by = 2)
  return(all(x %% xseq != 0))
}


# Fibonacci number below 1000
i =2
x = c(1, 1)
while (x[i] < 1e3) {
  x[i+1] = x[i-1] + x[i]
  i= i + 1 }
x = x[-i]
print(x)



#Dplyr ####
#Read file 
read.csv('birth.csv',header = T,stringsAsFactors = FALSE)
load(knick.rda) # find the data in the environment

#filter 选 行 
df <- data.frame(
  color = c("blue","black", "blue", "blue","black"),
  value = 1:5)
df
filter(df,color == 'blue')
df[df$color == 'blue',1,drop = F] #保持matrix形态 
df[df$color == 'blue',1:2] 
df[df$color == 'blue',]  # 这个是选中所有column
filter(df,value %in% c(3,4,5))
filter(df,value %in% c(3,4,5) & color == 'blue')
filter(df,value %in% c(3,4,5) | color == 'blue')

#select 选 列
df %>% 
  select(color)
  select(-color)
  select(.,1)
  
df %>% select(., -1, -2) # data frame with 0 columns and 5 rows
select(select(df, -1), -1)
select(df, -1) %>%
  select(., -1)  

df %>% select(., -1, 1)# 调换顺序

select(start_with('home',ignore.case=T))
ends_with(x, ignore.case=T)
contains(x, ignore.case=T)
match(x, ignore.case=T)
one_of(name_1, name_2, ..., name_n)
df %>% select(., contains('e'), starts_with('c'))

#rename
df %>% select(., COLOR=color) # 重新命名
df %>% rename(., COLOR = color, Something.New = value)

#arrange
df %>% arrange(., value)
df %>% arrange(., desc(value))
df %>% arrange(., color) # arrange can also be used to order strings alphabetically as well

#mutate
df %>% mutate(., double = value*2)
df %>% mutate(., double = 2 * value, quadruple = 4 * value) #添加新的column

df %>% transmute(., double = 2 * value, quadruple = 4 * value) #替换 column

#summarise
df %>% summarise(., total = sum(value))
df %>% summarise(., new_col=mean(value)/sd(value))
min()
max()
mean()
sum()
sd()
median()
n() #returns the number of observations.
n_distinct(x) # returns the number of unique values in the column x.
first(x) 
last(x) #returns the first or last observations in the column x.
nth(x, n) #returns the nth observation in column x.
head()
tail()
top_n(x, n, wt)

top_frac(x, n, wt)# bottom

#group_by #create a new subset
by_color = df %>% group_by(., color)
By_color
bnames2 %>%
  group_by(name, year) %>%
  summarise(total=sum(n))

#dplyr : start to finish
bnames %>%
  inner_join(., births, by=c('year','sex')) %>%
  mutate(., n=round(prop * births)) %>%
  group_by(., name, year) %>%
  summarise(., total=sum(n)) %>%
  filter(., name=='Vivian') %>%
  arrange(., desc(total)) %>%
            top_n(5)

#distinct
?distinct

df <- tibble(
  x = sample(10, 100, rep = TRUE),
  y = sample(10, 100, rep = TRUE)
)
df
nrow(df)
nrow(distinct(df))
nrow(distinct(df, x, y))
distinct(df, x)
distinct(df, y)


df2 %>%   # remove duplicate
  transmute(., color, value=as.numeric(value)) %>%
  distinct() %>%
  group_by(color) %>%
  summarise(total=sum(value))

#Join
x = data.frame( name = c("John", "Paul", "George",
                         "Ringo", "Stuart", "Pete"),
                          instrument = c("guitar", "bass", "guitar",
                               "drums", "bass", "drums"),
                stringsAsFactors = FALSE)
x

y <- data.frame( name = c("John", "Paul", "George",
                          "Ringo", "Brian"),
                 band = c(TRUE, TRUE, TRUE,
                          TRUE, FALSE),
                 stringsAsFactors = FALSE)
y

inner_join(x, y, by = "name") #没有missing value 的合集 #返回x里面在y有对应的值
left_join(x, y, by = "name")#x表格全部保留，从y表格提取x表格对应值
right_join(x, y, by = "name")#y表格全部保留，从x表格提取y表格对应值
full_join(x, y, by = "name")#合集
semi_join(x, y, by = "name")#交集
anti_join(x, y, by = "name")# 返回x里面在y没有对应的值


#tidyverse ####
#Reshape data
gather(data, key, value, ..., na.rm = FALSE, convert = FALSE, factor_key = FALSE)
gather(table4a, `1999`, `2000`, key = "year", value = "cases")
spread(data, key, value, fill = NA, convert = FALSE, drop = TRUE, sep = NULL)
spread(table2, type, count)

#Split
separate(data, col, into, sep = "[^[:alnum:]] +", remove = TRUE, convert = FALSE,
         extra = "warn", fill = "warn", ...)
separate(table3, rate, sep = "/", into = c("cases", "pop"))
separate_rows(data, ..., sep = "[^[:alnum:].] +", convert = FALSE)
separate_rows(table3, rate)
unite(data, col, ..., sep = "_", remove =T)
unite(table5, century, year, col = "year", sep = "")
#Handle Missing value
drop_na(data, ...) #Drop rows containing NA’s in ... columns.
fill(data, ..., .direction = c("down", "up")) #Fill in NA’s in ... columns with most recent non-NA values.
replace_na(data,replace = list(), ...) #Replace NA’s by column.




















































































































































































