# Titanic is avaliable in your workspace
library(ggplot2)
library(titanic)
data("titanic_train")
# Check out the structure of titanic
str(titanic_train)

# Use ggplot() for the first instruction
ggplot(data = titanic_train, aes(x = factor(Pclass), fill = factor(Sex))) +
  geom_bar(position = "dodge") +
  xlab("Class of Passengers on board") +
  ylab("Count of Passengers on board") +
  labs(fill = "Sex") 


# Use ggplot() for the second instruction
ggplot(data = titanic_train, aes(x = factor(Pclass), fill = factor(Sex))) +
  geom_bar(position = "dodge") +
  xlab("Class of Passengers on board") +
  ylab("Count of Passengers on board") +
  labs(fill = "Sex") +
  facet_grid(.~Survived)

# Position jitter (use below)
posn.j <- position_jitter(0.5, 0)

# Use ggplot() for the last instruction
ggplot(data = titanic_train, aes(x = factor(Pclass), y = Age, col = factor(Sex))) +
  geom_jitter(size = 3, alpha = 0.5, position = posn.j) +
  xlab("Class of Passengers on board") +
  ylab("Count of Passengers on board") +
  labs(col = "Sex") +
  facet_grid(.~Survived)