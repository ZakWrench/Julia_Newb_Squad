x = 5
y = 10

z = x + y
w = z * (x - y)

# Conditional
if x > y
  println("x is greater")
elseif x == y 
  println("x = y")
else
  println("y is greater")
end

# Loop
for i in 1:10
  println(i)
end

# Function 
function add(a,b)
  return a + b
end

# Fct Call
result = add(x,y)
println(result)

# Array
arr = [1,2,3,4,5]

# Arr Indexing
for i in arr
  println(i)
end

# Dictionary
my_dict = Dict("a" => 1, "b" => 2)

# Dict Access
my_dict_1 = my_dict["a"]

# Dict Iteration
for (key, value) in my_dict
  print(key, ":", value)
end
