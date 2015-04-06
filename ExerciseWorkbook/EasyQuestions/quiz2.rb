# Exercise 1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.key?("Spot")
# Alternative methods:
# ages.include?
# ages.member?

# Exercise 2

ages = { "Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237 }
ages.values.inject(:+) 
# Alternative:
# total = 0
# ages.each { |name, age| total += age }
# p total

# Exercise 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.delete_if { |name, age| age >= 100 }
# Alternative:
# ages.keep_if { |key, value| value < 100 }

# Exercise 4

munsters_description = "The Munsters are creepy in a good way."

munsters_description.capitalize!
munsters_description.downcase!
munsters_description.swapcase!
munsters_description.upcase!

# Exercise 5

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

# Exercise 6

ages = { "Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237 }
ages.values.min

# Exercise 7

advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino")
# Alternative:
# advice.match("Dino")

# Exercise 8

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.index { |name| name[0,2] == "Be" }

# Exercise 9

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! do |name|
  name[0, 3]
end
# Alternative:
# flintstones.map { |v| v.slice(0..2) }

# Exercise 10
flintstones.map! { |name| name[0,2] }


