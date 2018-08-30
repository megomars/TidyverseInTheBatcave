library(dplyr)
data("starwars")
table(starwars$gender)

#FILTER
males1 <- subset(starwars, gender=="male" & eye_color=="blue")
males2 <- starwars %>% filter(gender=="male", eye_color=="blue")

#ARRANGE
tall1 <- sort(starwars$height, decreasing = TRUE) # This just gives me a list of numbers
tall2 <- starwars %>% arrange(desc(height))
View(tall2)

#FILTER then ARRANGE
tallmales <- starwars %>% filter(gender=="male") %>% arrange(desc(height))
tallfemales <- starwars %>% filter(gender=="female") %>% arrange(desc(height))
tallothers <- starwars %>% filter(gender=="female") %>% arrange(desc(height))
hermap <- starwars %>% filter(gender=="hermaphrodite")

#Summarize and group
fatspecies <- starwars %>% filter(!is.na(mass)) %>% group_by(species) %>% summarize(mean(mass, na.rm = TRUE))
View(fatspecies)

