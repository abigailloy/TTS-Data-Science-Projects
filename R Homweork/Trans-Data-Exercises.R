library(tidyverse)
library(readxl)
library(AER)

# Exercise 1
#lists all example files available
readr_example()

# Exercise 2
#reads the mtcars.csv file
ii <- read_csv(readr_example("mtcars.csv"))

# Exercise 3
#reads the first 10 lines from the 'mtcars.csv' file
ii[0-10]

# Exercise 4
#reads 'example.log' file
iv <- read_csv(readr_example("example.log"))

# Exercise 5
#lists all sheets in readxl_example("datasets.xlsx")
v <- readxl_example("datasets.xlsx")
excel_sheets(v)

# Exercise 6
#reads data from last sheet
read_excel(v, sheet = 4)

# Exercise 7
#loads 'Fertility' and glimpes
data("Fertility")
glimpse(Fertility)

# Exercise 8
#selects rows 35-50 and prints to console 'age' and 'work' columns
viii <- Fertility %>%
  select(age, work) %>%
  slice(35:50)
print(viii)

# Exercise 9
#selects last row 
ix <- Fertility %>%
  slice(n())
print(ix)

# Exercise 10
#counts how many women had a third child
x <- Fertility %>%
  filter(morekids == "yes") %>%
  count()
print(x)

# Exercise 11
#gender combinations for first two children
xi <- Fertility %>%
  group_by(gender1, gender2) %>%
  count()
print(xi)