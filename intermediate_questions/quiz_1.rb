#1
#10.times {|n| puts "The Flintstones Rock!".rjust(21 + n) }

#2
=begin
str = "The Flintstones Rock"
str_hash = {}
str.tr(' ','').split('').uniq.each {|v| str_hash[v] = str.count v}
p str_hash
=end

#3
#Why will the following code result in an error?

=begin
puts "the value of 40 + 2 is " + (40 + 2)

Because you can't convert a Fixnum to a String or vice versa.
This code would either be trying to concatenate a number
to a string or add a string to a number. Use to_s on the number to
fix this problem.
=end

#4
=begin
ary = [1, 2, 3, 4]
ary.each do |item|
  p item
  ary.shift(1)
end
# Output 1,3

ary = [1, 2, 3, 4]
ary.each do |item|
  p item
  ary.pop(1)
end
#Outputs 1,2
=end

#5
def factors(number)
  dividend = number
  divisors = []
  until dividend == 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end 
  divisors
end

#Bonus 1: This line checks to see if the number is question can be divided evenly
#by dividend, if it can then dividend is a factor of number.

#Bonus2: This returns the array of factors for the number we're looking for.


#6
#Given:
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

=begin
The difference between the two methods is that the first one 
modifies the original array by appending a new element to it.

The second method actually concatenates two array and returns a new one
assigning it to the buffer variable.

Overall, neither of these are actually rolling array, a real rolling
array would delete the first element once the max size is reached and
then assign the new element to the first position. 
=end

#7
#Here the limit variable is out of scope.  You can either change it to be
#a class or instance variable or pass limit into the fib method.

#8
=begin
class String
  def titlesize
    if self.include?(' ') 
      str = self.split.map {|w| w.downcase.capitalize}.join(' ')
    else
      ts_nospaces
    end

  end
  #This is for if a sentence was written with no spaces in it.
  def ts_nospaces
    
    words = []
    start = nil

    self.chars.each_with_index do |c,i|
      if i == 0 
        start = i
        next
      end

      unless c.ord.between?(97,122)
        words << self[start...i]
        start = i
      end
     
    end

    words << self[start...self.size]
    words.join(' ')
  end

end
=end

#9
=begin
class String
  def shorten_string(lim)
    result = self.dup
    result[lim...(self.size)] = '...' if result.size >=  32
    result
  end
end

characters = [
    {:character=>"Batman", :real_name=>"Bruce Wayne", :description=>"Comic book superhero who fights crime while wearing a costume loosely based on a bat"}, 
    {:character=>"Robin", :real_name=>"Dick Grayson", :description=>"Loyal sidekick for batman -- much younger and smaller and sometimes portrayed by girl in later episodes"},
    {:character=>"Commisioner Gordon", :real_name=>"James Gordon", :description=>"Police Commisioner of Gotham City and loyal friend of Batman -- frequently communicates secretly with Batman via signals or a special red BatPhone"}, 
    {:character=>"Alfred", :real_name=>"Alfred", :description=>"The butler and also a key support player in many episodes providing communications, armament, and also moral support to Batman"}
  ]

characters.each {|c| c.values.each{|v| p v.shorten_string(32)} }
=end

#10
hash = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}
hash.each_value do |v|
  v["demographic"] = 
  case v["age"]
  when 0...18 
  "kid"
  when 18...65
  "adult"
  when 65...Float::INFINITY
  "senior"
  else "You haven't even been born yet."
  end

end


