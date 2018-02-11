def clever_print(*lists)
box = []
lists.each do |list|
if list.kind_of?(Hash)
box.push(list.flatten)
else
box.push(list)
end
end
puts box.join(" ")
end

clever_print(["Ruby"], "the", ["Programming", "Language"])
clever_print(["Agile", "Web", "Development"], "with", { :Rails => 3.0 })
