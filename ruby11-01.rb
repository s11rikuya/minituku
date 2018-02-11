month = ["1月","2月","3月","4月","5月"]
wrong_number = [0,1,2,"3",4]
wrong_number.each do |num|
begin
puts month[num]
rescue => e
puts e.message
ensure
puts "puts"
end
end
