require 'pry-byebug'
# just to see how long a block of code takes to execute

def timer
  start_time = Time.now
  # do some stuff
  yield  # CALLS THE BLOCK
  puts "Elapsed time: #{Time.now - start_time}"
end

# timer

timer do
  puts "Doing something fast..."
  sleep(1)
  puts "Done!"
end

timer do
  puts "Doing something slow..."
  sleep(3)
  puts "Done!"
end

# def beautify_name(name)
#   p name
# end

# beautify_name('el mehdi')
# beautify_name('yoshiko')
