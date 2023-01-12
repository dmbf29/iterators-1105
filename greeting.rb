def greeting(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  # "Hi #{full_name} 👋"
  yield(full_name)
  # yield is calling the block. the block is an anonymous method
end

greeting('anri', 'tomita') do |full_name|
  puts "Bonjour #{full_name} 👋"
end

# greeting('emmanuel', 'last_name') do |full_name|
#   puts "Hello #{full_name} 👋"
# end



# def beautify_name(name)
#   p name
# end

# beautify_name('el mehdi')
