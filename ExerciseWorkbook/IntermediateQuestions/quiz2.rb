# Exercise 1

munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" } 
}

total = 0
munsters.each do |member, values|
  if values["gender"] == "male"
    total += values["age"]
  end
end

# Alternative
# total_male_age = 0
# munsters.each do |key, value|
# male_family_member = value["gender"] == "male"
# total_male_age += male_family_member ? value["age"] : 0
# end


# Exercise 2


munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" } 
}

index = 0
munsters = munsters.each { |key, value| value[:original_order] = index, index += 1 }
munsters = munsters.each { |key, value| value[:length_order] = key.length }

munsters.to_a.sort { |a, b| a[1][:original_order] <=> b[1][:original_order] }.each { |item| puts item }
munsters.to_a.sort { |a, b| a[1][:length_order] <=> b[1][:length_order] }.each { |item| puts item }


# Exercise 3


munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each { |key, value| puts "#{key} is a #{value["age"]} year old #{value["gender"]}." }


# Exercise 4

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabega"
  an_array_param += ["rutabega"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
a_string_param, an_array_param = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


# Exercise 5

sentence = "Humpty Dumpty sat on a wall."

words = sentence.split(/\W/)
words.reverse!
backwards_sentence = words.join(' ') + '.'
p backwards_sentence

# Exercise 6

answer = 42

def mess_with_it(some_number)
    some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
p 34

# Exercise 7

munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

p munsters

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)
p munsters

# Exercise 8


class String
  def pretty_short_version(length)
    starting_length = self.length
    answer = self.dup
    if starting_length > length
      words = self.split(' ')
      if words[0].length > length-3
        answer = answer[0, [length-3, 1].max]
      else
        answer = ''
        words.each do |word| 
          if answer.length <= length-3 
            answer += (word + ' ')
          end
        end
      end
      answer += "..."
    end

    answer
  end
end


# Alternative:
class String
  def pretty_short_version(length)
    result = self.dup
    starting_length = self.length
    if starting_length > length
      length -= 1   # leave room for ellipsis
      words = result.split
      result = words.shift
      result = result[0, length] if result.length > length
      result += ' ' + words.shift while(!words.empty? && ((result.length + words.first.length + 1) < length))
      result += "…"
    end

    result
  end
end

p "This is my word sequence.".pretty_short_version(12)
p "This is my word sequence.".pretty_short_version(30)
p "This is my word sequence.".pretty_short_version(5)
p "This is my word sequence.".pretty_short_version(2)

# Exercise 9

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps( rps( rps("rock", "paper"), rps("rock", "scissors")), "rock")

# Exercise 10

def foo(param = "no")
    "yes"
end

def bar(param = "no")
    param == "no" ? "yes" : "no"
end

puts bar(foo)
