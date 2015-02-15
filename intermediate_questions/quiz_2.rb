#1
=begin

hash = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" } 
  }

  age_tot = 0
  hash.each do |k,v|
   age_tot += v["age"] if v["gender"] == "male"
  end
  age_tot = hash.values.inject(0) do |s,v| 
    v["gender"] == "male" ? s + v["age"] : s + 0
  end


  #2

#My answer #Note, this method doesn't print out sort keys and value
#Instead I store blocks of code in those keys to get the desired result.
hash["sort"] = {"name_length" => hash.keys.sort{|a,b| a.length <=> b.length},
                "original_order" => hash.keys}

hash["sort"]["name_length"].each{|item| puts item, hash[item]} 
hash["sort"]["original_order"].each{|item| puts item, hash[item]}



#3
hash = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}

hash.each {|k,v| puts "#{k} is a #{v["age"]} year old #{v["gender"]}."}


#4
#Notes, in the future aim for being more concise and explicit in your code.
#While this recfactor does allow you to expand you code a bit more, it is still
#a bit unclear on what values you will get returned from the method here."
def tricky_method(*params)
  return params.each { |param| param << "rutabega"}
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)


puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


#5
str = "Humpty Dumpty sat on a wall."
str = str.split(/\W/).reverse.join(' ').<<('.')
p str


#6
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

#This code outputs 34.  The code prior to the output statement
#doesn't change the value of our original "answer" variable.  

#7
munster_hash = { 
     "Herman" => { "age" => 32, "gender" => "male" }, 
     "Lily" => { "age" => 30, "gender" => "female" }, 
     "Grandpa" => { "age" => 402, "gender" => "male" }, 
     "Eddie" => { "age" => 10, "gender" => "male" },
     "Marilyn" => { "age" => 23, "gender" => "female"}
    }

def mess_with_demographics(demo_hash)
    demo_hash.values.each do | family_member |
      family_member["age"] += 42
      family_member["gender"] = "other"
    end
end

mess_with_demographics(munster_hash)
#Unfortunately, hashes pass by reference, so Spot has ransacked 
#the munster family data.



#8
class String
  def pretty_short_version(lim)

    result = self.dup

    if result.length > lim
      idx_s = lim - result[0...lim].reverse.index(/\s/)
      idx_f = idx_s - result[0...idx_s].reverse.index(/\w/)
      result = result[0,idx_f] << '...'
    end

    result
  end
end

#9
Given:
def rps(fist1, fist2)
  if (fist1 == "rock")
    (fist2 == "paper") ? "paper" : "rock"
  elsif (fist1 == "paper")
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps( rps( rps("rock", "paper"), rps("rock", "scissors")), "rock")
#This outputs paper as a result.


#10
Given:
def foo(param="no")
  "yes"
end

def bar(param="no")
  param == "no" ? "yes" : "no"
end

maybe = bar(foo())
#This return "no"
=end





















