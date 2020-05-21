def my_each(array)
  i = 0
  while i < array.size
    yield array[i]
    i += 1
  end
  array
end

array = [1,2,3,4,5]

# Using Array's each method.
puts "Using Array's each method"
return_value = array.each do |element|
  puts element
end
puts "Inspecting return value..."
puts return_value.inspect

# Using mine equivalent my_each method.
puts "Using mine equivalent my_each method"
return_value = my_each(array) do |element|
  puts element
end
puts "Inspecting return value..."
puts return_value.inspect
