
def all_caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts all_caps('too short')
puts all_caps('long enough for this')
