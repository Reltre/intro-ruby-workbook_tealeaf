#1
arr = [1, 2, 2, 3]
arr.uniq

puts arr  # => what does this print out?
#Ans: This prints out the array [1,2,2,3]

#2
=begin
! is the not negation operator, it is used to negate a boolean value.
It can also be appended to the end of a method name to show that it is
destructive.

? can be used as ternary operator or at the end of a mehthod name that
returns a boolean value.

1. You use '!=' to check if a value is not equal to another value
2. You can use ! before a value to negate it's boolean equivalent
3. Putting '!' after something like gsub(str) would take the returned value
and output it's negated boolean value.
4. !! can be used to give the boolean value of an object. 
=end

#3
str = "Few things in life are as important as house training your pet dinosaur."
str = str.sub("important","urgent")

#4
arr = [1, 2, 3, 4, 5]

arr.delete_at(1) # => Returns 2 and arr is now [1,3,4,5]
arr.delete(1) # => Returns 1 and arr is now [2,3,4,5]

#5
42.between?(10,100)

#6
str1 = "and seven years ago..."
str1[0,0] = "Four score " # Method one

str2 = "and seven years ago"
str2 = "Four score " << str2 #Method two

#7
=begin
def add1(num)
  num + 4
end

num = 2

how_deep = "num"
10.times{ how_deep.gsub!("num", "add1(num)") }
p how_deep

It should return 42 after running eval on the string
how_deep.
=end

#8
arr = ["Fred", "Wilma"]
arr << ["Barney", "Betty"]
arr << ["BamBam", "Pebbles"]
arr.flatten!

#9
arr_hash = {"Fred"=>0, "Wilma"=>1, "Barney"=>2, "Betty"=>3, "BamBam"=>4, "Pebbles"=>5}
arr = []
arr << "Barney"
arr << arr_hash["Barney"]

#or arr.assoc("Barney")

#10
arr = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = {}
arr.each_with_index {|v,i| hash[v] = i }
