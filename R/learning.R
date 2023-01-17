# ticktock

# Here is an example of a conflict.

# Testing Git

10

# R basics ----------------------------------------------------------------

weight_kilos <- 100
weight_kilos

colnames(airquality)
str(airquality)
summary(airquality)

2 + 2

2 + 2


# Packages ----------------------------------------------------------------

library(tidyverse)
library(NHANES)


# Looking at data ---------------------------------------------------------

glimpse(NHANES)
select(NHANES, Age, Weight, BMI)
select(NHANES, -HeadCirc)
select(NHANES, starts_with("BP"))
select(NHANES, ends_with("Day"))
select(NHANES, contains("Age"))

nhanes_small <- select(
  NHANES,
  Age,
  Gender,
  BMI,
  Diabetes,
  PhysActive,
  BPSysAve,
  BPDiaAve,
  Education
)
nhanes_small
