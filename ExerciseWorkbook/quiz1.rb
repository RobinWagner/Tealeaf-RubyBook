# Exercise 1
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers 
# prints 
# 1
# 2
# 2
# 3


# Exercise 3

advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!('important', 'urgent')

# Exercise 4

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)  # returns 1, removes value at index 1 ('2') from array (is destructive)
numbers.delete(1)     # returns 1, removes value '1' from array (is destructive)

# Exercise 5

puts "42 lies between 10 and 100" if 42.between?(10, 100)
(10..100).cover?(42)

# Exercise 6

famous_words = "and seven years ago..."
famous_words = 'Four score and ' + famous_words
famous_words.prepend("Four score and ")

# Exercise 7

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
eval(how_deep)

# Exercise 8

flintstones = ['Fred', 'Wilma']
flintstones << ['Barney', 'Betty']
flintstones << ['BamBam', 'Pebbles']

flintstones.flatten!

# Exercise 9

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3. "BamBam" => 4, "Pebbles" => 5 }
flintstones.assoc("Barney")

# Exercise 10

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end
