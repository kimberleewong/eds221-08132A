# character vector
dogs <- c("teddy", "khora", "waffle", "banjo")

typeof(dogs)
class(dogs)

# numeric vector
weights <- c(50,55,25,35)

typeof(weights)
class(weights)

# integer vector
dog_age <- c(5L, 6L, 1L, 7L)

typeof(dog_age)
class(dog_age)
is.numeric(dog_age)

#combine classes
dog_info <- c("teddy", 50, 5L)
dog_info

typeof(dog_info)
class(dog_info)
is.character(dog_info)

# names vectors
dog_food <- c(teddy = "purina",
              khora = "alpo",
              waffle = "fancy feast",
              banjor = "blue diamond")

# accessing bits of vectors
dog_food[2]
dog_food["khora"]

cars <- c("red", "orange", "white", "blue", "silver", "black")

cars[5]
cars[2:4]

#intro to loops
i <- 4 
cars[i]

i <- seq(1:3)
cars[i]

# update elements of a vector directly (mutable)
cars[3] <- "BURRITOS!"
cars 

# creating matrices
fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), ncol = 2, nrow = 2, byrow = FALSE)
fish_size

typeof(fish_size)
class(fish_size)

# combine data types in matrix
dog_walk <- matrix(c("teddy", 5, "khora", 10), ncol = 2, nrow = 2, byrow = FALSE)
dog_walk

typeof(dog_walk)
class(dog_walk)

# accessing pieces of matrices

whale_travel <- matrix(data = c(31.8, 1348, 46.9, 1587), nrow = 2, ncol = 2, byrow = TRUE)
whale_travel

whale_travel[1,2]
whale_travel[2,1]
whale_travel[2,]
whale_travel[,1]
whale_travel[3]

# lists
urchins <- list("blue", c(1,2,3), c("a cat", "a dog"), 5L)
urchins

# accessing pieces of a list
urchins [[2]]

# naming list items
tacos <- list(topping = c("onion", "cilantro", "guacamole"), filling = c("beans", "meat", "veggie"), price = c(6.75, 8.25, 9.50))
tacos

tacos[[2]]
tacos$filling

# data frames
fruit <- data.frame(type = c("apple", "banana", "peach"),
                    mass = c(130, 195, 150))
fruit

class(fruit)

# access elements from a data frame (goes row, col)
fruit[1,2]
fruit[3,1]
# renames 
fruit[2,1] <- "pineapple"
fruit
