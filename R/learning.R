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


# Fixing variable names ---------------------------------------------------

nhanes_small <- rename_with(
  nhanes_small,
  snakecase::to_snake_case
)

nhanes_small <- rename(
  nhanes_small,
  sex = gender
)


# Piping ------------------------------------------------------------------

colnames(nhanes_small)
nhanes_small %>%
  colnames()
nhanes_small %>%
  select(phys_active) %>%
  rename(physically_active = phys_active)


# Taks ------------------------------------------------------------------


nhanes_small %>%
  select(bp_sys_ave, education)

nhanes_small %>%
  rename(
    bp_sys = bp_sys_ave,
    bp_dia = bp_dia_ave
  )

nhanes_small %>%
  select(bmi, contains("age"))

nhanes_small %>%
  select(starts_with("bp")) %>%
  rename(bp_systolic = bp_sys_ave)
