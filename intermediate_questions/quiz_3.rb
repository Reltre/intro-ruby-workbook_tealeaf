=begin
#1
a_outer == a_inner < 42 => 22 
b_outer == b_inner < "forty two" => "thirty three"
c_outer == c_inner < [42] => [44] 
d_outer == d_inner <  42 =>  44

The object id's change after the assignment changes to a_outer,b_outer,c_outer
and d_outer

The object id's change with them since they are referring to new objects.

#2
The assignments of both values and id's that take place in the method do not
affect the outer values outside the method.
These are passed by value and not reference to the method, so they are not changed.

#3
This will output "pumpkins" and ["pumpkins","rutabega"], these are passed
by value, with a reference to the same object.  But notice that the string
is concatenated, this returns a new string within the method.
Now if we had used the shovel operator instead our string output would
be pumpkinrutabega.

#4
In this exercise sicne gsub bang is used the string object that is refereced
by a_string_param will be changed, 'pumpkins' will now be 'rutabega'.

As for the array, the variabld holding out original array value is reassigned.
This reassignment does not affect the array outside the method.

Final output : 
My string looks like this now: rutabega
My array looks like this now: ["pumpkins"]

#5
Given:
def color_valid
  if color == "blue" || color == "green
    true
  else
    false
  end  
end

Remove the unnecessary duplication.

def color_valid
  color == "blue" || color == "green" 
end

=end