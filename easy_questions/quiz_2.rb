#1
hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
hash["Spot"]
#Bonus
hash.fetch("Spot")
hash.include?("Spot")
hash.key?("Spot")

#2
hash = {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237
hash.values.inject(:+)

#3
hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
hash.delete_if {|k,v| v > 100}

#4
str = "The Munsters are creepy in a good way."
str.capitalize!
str.swapcase!
str.downcase!
str.upcase!

#5
hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

rest = { "Marilyn" => 22, "Spot" => 237 }
hash.merge!(rest)

#6
hash = {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}
hash.values.min

#7
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
arr.map! {|v| v = v[0,3] }

#8
str = "Few things in life are as important as house training your pet dinosaur."
str.match("Dino")
#9
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
result = nil
arr.each_with_index {|v,i| result = i if v[0,2] == 'Be'}

#10
#Same answer as number seven

