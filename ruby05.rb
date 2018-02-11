def buy_tickets(*names)
 if names.length < 4
  names.each do |name|
  puts "Buying a ticket for #{name}."
 end
 else
  puts "Buying a group ticket for #{names.join(", ")}."
 end
end

buy_tickets("Sam", "Dave", "David")
buy_tickets("John", "Paul", "Ringo", "George")

