musicians = ['Anri Tomita', "Emily O'Marra", 'Emika Sangu', 'Anik Dutta', 'Kevin Tsai']
# index           0               1              2              3              4
# index          -5              -4             -3             -2              -1

# CRUD

# Create
# array.push('mandil')
# array << 'mandil'
musicians << 'mandil'

# Read
# array[1]
p musicians[1]
p musicians[-2]

# Update
# array[-1] = new_value
musicians[-1] = 'Gilary'

# Delete
# array.delete('value')
# array.delete_at(index)
musicians.delete_at(-1)
