height = ARGV[0].to_i
output = ""
i=1
while i <= height
  output << " " * (height - i)
  output << "*" * i
  output << "*" * i
  output << "\n"
  i = i + 1
end
puts output