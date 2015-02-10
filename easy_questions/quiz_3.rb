#1
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)

#2
arr << "Dino"

#3
arr.push("Dino","Hoppy")

#4
str = "Few things in life are as important as house training your pet dinosaur."
str.gsub("house ","")

#5
str = "The Flintstones Rock!"
count = str.count 't'

#6
str1 = "Fred"
str2 = "Barney"

compr = str1.length <=> str2.length

#7
title = "Flintstone Family Members"
title.center(40)

#8
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
arr.sort! {|a,b| a.size <=> b.size}

#9
arr.sort! {|a,b| b.size <=> a.size}

#10
arr = %w( fred Barney Wilma betty BamBam Pebbles)
arr.sort! {|a,b| a.downcase <=> b.downcase}



