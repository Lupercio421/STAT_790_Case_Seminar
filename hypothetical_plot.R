library(dplyr)
library(ggplot2)

set.seed(1234)

# if original and model data are in the same data frame
df <- data.frame(
  year = as.character(2011:2020),
  original_values = sample(10:60, 10),
  model_values = sample(20:70, 10)
)


df %>%
  ggplot() +
  geom_line(aes(x = year, y = original_values, group = 1), color = "blue") +
  geom_point(aes(x = year, y = original_values, group = 1), color = "blue") +
  geom_line(aes(x = year, y = model_values, group = 1), color = "darkgreen") +
  geom_point(aes(x = year, y = model_values, group = 1), color = "darkgreen") +
  labs(y = "MSV")


# if original and model data are in separate data frames
df_original <- data.frame(
  year = as.character(2011:2020),
  original_values = sample(10:60, 10)
)
df_model <- data.frame(
  year = as.character(2011:2020),
  model_values = sample(20:70, 10)
)

df_original %>%
  ggplot() +
  geom_line(aes(x = year, y = original_values, group = 1), color = "blue") +
  geom_point(aes(x = year, y = original_values, group = 1), color = "blue") +
  geom_line(data = df_model, aes(x = year, y = model_values, group = 1), color = "darkgreen") +
  geom_point(data = df_model, aes(x = year, y = model_values, group = 1), color = "darkgreen") +
  labs(y = "MSV")