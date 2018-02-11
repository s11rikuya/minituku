str = ""
100.times do |i|
  str += "ruby"
  if (i+1) % 10 == 0 then
    str += "\n"
  end
end
print(str.gsub(/^ruby/, "Ruby"))
print(str.gsub(/ruby$/, "Ruby"))
