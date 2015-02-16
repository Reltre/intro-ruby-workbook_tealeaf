=begin
#1
When n is refernced you should get an error saying that you are referencing an
object that has not been created yet.  The if statement will never execute
since it is always false, and this n will never be assigned an initial value.
(^incorrect)
I'm incorrect here, ruby will set the local variable to nil. No undef-
ined method or variable error is thrown. Note: This only works,
because of the assignment in the if statement.  If n is never assigned a 
value at all, a NameError will be thrown.

#2
Given:
my_hash = {a: 'hi'}
n = my_hash[:a]
n << ' there'

puts n  #  => "hi there"
puts my_hash

What is outputted by the last line?
hi there is the output.  Because, n is given a
reference to the value associated with the key a 
when you change the n variable it will also change the value
in the hash as well.

#3
A)
Outputs : One is one; Two is two; Three is three.
B)
Outputs: One is one; Two is two; Three is three.
C)
Outputs: One is two;Two is three;Three is one

#4
A)
Outputs: [1,2,3,4] : The lambdh returns new objects once you multiply
10* input.  The original array values remain unchanged.
B)
Outputs: da_string => "40"
In both the two cases below, because we are changing an existing
String that has scope outside the lambdha, the changes will persist.
C)
Outputs: da_string -> "10203040"
D) 
Outputs: da_string -> "10203040"
E)
Outputs: "original"

#5
def give_UUID
  hexs = [0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F']
  eight = (hexs.sample(8) << '-').join
  fours = ""
  3.times {fours << hexs.sample(4).join + '-' }
  twelve = hexs.sample(8).join
  hex = eight + fours + twelve
  return hex
end

#6
class String
  def map_words!
    result = self
    result = 
      result.chop.split.map! {|v| v.reverse! }
   
    self.replace(result.join(' ').<<('.'))

    return self
  end
end

str = "Herman Munster is a BIG BIG man." 

p str.map_words!

#7
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false if !is_a_number?(word)
  end
  return true
end
=end