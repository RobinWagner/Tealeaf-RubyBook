# Exercise 1

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Exercise 2

flintstones << "Dino"

# Exercise 3

flintstones.push("Dino").push("Hoppy")

# Exercise 4

advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index('house'))

# Exercise 5

statement = "The Flintstones Rock!"
statement.count('t')
# Alternative:
# statement.scan('t').count

# Exercise 6

title = "Flintstone Family Members"
title.center(40)
