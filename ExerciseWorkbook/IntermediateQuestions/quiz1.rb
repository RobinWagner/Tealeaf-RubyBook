# Exercise 1

10.times { |index| puts "The Flintstones Rock!".rjust(21 + index) }

# Exercise 2

statement = "The Flintstones Rock"
hash = {}
letters = statement.gsub(/\s+/, "").split("")
letters.each do |letter|
  if hash[letter]
    hash[letter] += 1
  else
    hash[letter] = 1
  end
end

# Alternative (lists all letters)
# result = {}
# letters = ('A'..'Z').to_a.concat(('a'..'z').to_a)
# letters.each do |letter|
#   count = statement.scan(letter.to_s).count
#   result[letter] = count if count > 0
# end


# Exercise 3

puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 2 is " + (40 + 2).to_s

# Exercise 4

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# Exercise 5

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

factors (3)
factors (7)
factors (0)
factors (-1)

# Exercise 8

def titleize!(string)
  arr = string.split
  arr.each { |word| word.capitalize! }.join(' ')
end

# Alternative
# words.split.map { |word| word.downcase.capitalize }.join(' ')


# Exercise 9

class String
  def short_version(length)
    result = self.dup
    starting_length = self.length
    if starting_length > length
      result = result[0, length - 1]
      result += "..."
    end

    result
  end
end

characters = [
      { :character => "Batman", :real_name => "Bruce Wayne", :description => "Comic book superhero who fights crime while wearing a costume loosely based on a bat" }, 
          { :character => "Robin", :real_name => "Dick Grayson", :description => "Loyal sidekick for batman -- much younger and smaller and sometimes portrayed by girl in later episodes" },
              { :character => "Commisioner Gordon", :real_name => "James Gordon", :description => "Police Commisioner of Gotham City and loyal friend of Batman -- frequently communicates secretly with Batman via signals or a special red BatPhone" }, 
                  { :character => "Alfred", :real_name => "Alfred", :description => "The butler and also a key support player in many episodes providing communications, armament, and also moral support to Batman" }
                      ]


characters.each { |character| p character.values.map{|value| value.short_version(32) }.join("    ")}

# Exercise 10

munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

age_of_majority = 18
dotage = 65
munsters.each do |key, value|
  value[:demographics] = "kid" if value["age"] < age_of_majority
  value[:demographics] = "adult" if (age_of_majority..dotage).include?(value["age"])
  value[:demographics] = "senior" if value["age"] >= dotage
end
