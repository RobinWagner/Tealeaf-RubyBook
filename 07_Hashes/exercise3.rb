# exercise3.rb

hash = { one: 'cat', two: 'dog', three: 'catdog' }

hash.each { |k| puts k }
hash.each { |v| puts v }
hash.each { |k,v| puts "#{k}: #{v}" }
