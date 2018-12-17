# change comments to descriptions
meal_data <- read.csv("C:/Users/Engr/Desktop/SC/inst/extdata/Pricelist - Expenses (1).csv")

usethis::use_data(meal_data, compress = "xz")

# get meal names & ingredients columns, store as vectors, remove factors
{
  meals <- data.frame(meal = meal_data[1:25,7])
  meals <- dplyr::pull(meals, meal)
  meals <- as.character(meals)
  # change ingredients to inventory
  ingredients <- as.character(meal_data$Product)
}

usethis::use_data(meals, compress = "xz", overwrite = T)
# usethis::use_data(inventory, compress = "xz", overwrite = T)

# sample code for desired output
{
  check <- list(Meal = meals[01], Ingredients = ingredients[c(7:10, 35)])
  check1 <- list(Meal = meals[2], Ingredients = ingredients[c(17:20, 35)])
  check_combined <- list(check, check1)
  check_combined

#  [[1]]
#  [[1]]$`Meal`
#  [1] "Assorted Stew"

#  [[1]]$Ingredients
#  [1] "Turmeric"     "Curry"        "Thyme"        "White Pepper" "Seafood mix"


#  [[2]]
#  [[2]]$`Meal`
#  [1] "Chicken Spaghetti Stir Fry"

#  [[2]]$Ingredients
#  [1] "Oyster Sauce" "Maggi"        "Salt"         "Onion Powder" "Seafood mix"
}

# actual ingredients for each meal, change to inventory
{
  meal_01 <- list(Meal = meals[01], Ingredients = ingredients[c(7:15, 18:19, 24:26, 36, 38:43, 50)])
  meal_02 <- list(Meal = meals[02], Ingredients = ingredients[c(7:15, 16:19, 22, 39:43, 50)])
  meal_03 <- list(Meal = meals[03], Ingredients = ingredients[c(7:15, 18:19, 27:28, 36, 38:43, 50)])
  meal_04 <- list(Meal = meals[04], Ingredients = ingredients[c(7:21, 37:43, 45:46, 50:51, 64)])
  meal_05 <- list(Meal = meals[05], Ingredients = ingredients[c(7:15, 18:19, 24:27, 39:43, 49, 59, 60, 62)])
  meal_06 <- list(Meal = meals[06], Ingredients = ingredients[c(18:19, 23:26)])
  meal_07 <- list(Meal = meals[07], Ingredients = ingredients[c(7:15, 18:19, 32, 36, 38:43, 49, 50)])
  meal_08 <- list(Meal = meals[08], Ingredients = ingredients[c(19, 50, 56)])
  meal_09 <- list(Meal = meals[09], Ingredients = ingredients[c(7:15, 18:20, 32, 50)])
  meal_10 <- list(Meal = meals[10], Ingredients = ingredients[c(7:16, 18:21, 27:28, 39, 41:43, 45, 46, 50, 62)])
  meal_11 <- list(Meal = meals[11], Ingredients = ingredients[c(7:16, 18:20, 31, 39:43, 48, 50)])
  meal_12 <- list(Meal = meals[12], Ingredients = ingredients[c(7:16, 18:20, 31, 39:43, 50)])
  meal_13 <- list(Meal = meals[13], Ingredients = ingredients[c(7:15, 18:21, 27:28, 36:43)])
  meal_14 <- list(Meal = meals[14], Ingredients = ingredients[c(7:15, 18:20, 22, 27:28, 36:43)])
# meal_15 <- list(Meal = meals[15], Ingredients = ingredients[c()])
  meal_16 <- list(Meal = meals[16], Ingredients = ingredients[c(7:15, 18:19, 24:27, 39:43, 49, 59, 60:61)])
  meal_17 <- list(Meal = meals[17], Ingredients = ingredients[c(19:21, 23, 39:43, 49)])
  meal_18 <- list(Meal = meals[18], Ingredients = ingredients[c(7:15, 18:20, 28, 39:43, 50)])
  meal_19 <- list(Meal = meals[19], Ingredients = ingredients[c(7:15, 18:20, 26, 39:43, 50)])
  meal_20 <- list(Meal = meals[20], Ingredients = ingredients[c(44:46, 52:54)])
  meal_21 <- list(Meal = meals[21], Ingredients = ingredients[c(7:15, 18:19, 32:35, 39:43, 49, 59, 60, 63)])
# meal_22 <- list(Meal = meals[22], Ingredients = ingredients[c()])
  meal_23 <- list(Meal = meals[23], Ingredients = ingredients[c(7:15, 18:19, 24:27, 39:43, 49, 59, 60)])
  meal_24 <- list(Meal = meals[24], Ingredients = ingredients[c(7:15, 16:19, 22, 39:43, 50, 64)])
  meal_25 <- list(Meal = meals[25], Ingredients = ingredients[c(19:21, 46, 50)])
}

shopping_list <- list(meal_01, meal_02, meal_03, meal_04, meal_05, meal_06, meal_07, meal_08,
                      meal_09, meal_10, meal_11, meal_12, meal_13, meal_14, meal_16, meal_17,
                      meal_18, meal_19, meal_20, meal_21, meal_23, meal_24, meal_25)

usethis::use_data(shopping_list, compress = "xz", overwrite = T)
