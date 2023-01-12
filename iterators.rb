musicians = ['Anri Tomita', "Emily O'Marra", 'Emika Sangu', 'Anik Dutta', 'Kevin Tsai']
# index           0               1              2              3              4

# for parameter in array
# for musician in musicians
#   puts "#{musicians.index(musician) + 1} #{musician} is in the band"
# end

for index in (0...musicians.length)
  "#{index + 1} #{musicians[index]} is in the band"
end

# .each
# array.each do |parameter|
#   # only in here, we have acces to the parameter
# end
upcased = []
musicians.each do |musician|
  upcased << musician.upcase
end
p upcased


# .each_with_index
musicians.each_with_index do |musician, index|
  "#{index + 1} #{musician} is in the band"
end

# inside of the do/end (block), DONT 'return'

# .map -> map will collect the LAST line inside of the block
upcased = musicians.map do |musician|
  musician.upcase
end


first_names = musicians.map do |musician|
  names = musician.split
  names.last
end

# .count -> for which some code is true
e_musicians = musicians.count do |musician|
  # musician.start_with?('E')
  musician[0] == 'E'
end

musicians = ['Anri Tomita', "Emily O'Marra", 'Emika Sangu', 'Anik Dutta', 'Kevin Tsai']

t_musicians = musicians.select do |musician|
  last_name = musician.split.last
  last_name.start_with?('T') # truthy
end

# t_musicians = musicians.reject do |musician|
#   last_name = musician.split.last
#   last_name.start_with?('T') # truthy
# end

t_musicians = musicians.find do |musician|
  last_name = musician.split.last
  last_name.start_with?('Z') # truthy
end


t_musicians = musicians.all? do |musician|
  last_name = musician.split.last
  last_name.start_with?('T') # truthy
end

# p t_musicians
# p musicians

# .each => will return the original
# .map => build a new array
# .count => return an integer
# .select => create a new array with the truthy ones
# .find => returns the first value or nil
