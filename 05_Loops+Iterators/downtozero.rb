
def downtozero(n)
  if n <= 0
    puts n
  else
    puts n
    downtozero(n - 1)
  end
end


puts "Inpute a number:"
number = gets.chomp.to_i
downtozero(number)
