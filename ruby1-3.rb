profiles = [
{name: "静岡太郎", age: 34, address: "静岡県"},
{name: "名古屋太郎", age: 25, address: "愛知県"},
{name: "大津太郎", age: 19, address: "蘇我県"}
]
def serch(profiles, key, query)
profiles.each do |profile|
if query =~ profile[key]
return profile
end
end
end
p serch(profiles, :name,/静岡太郎/)

