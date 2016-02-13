Sometimes you want to repeat an action while a certain condition is true, but you don't know how many times you'll have to repeat that action. 


1. while loops
2. until loops
3. assignment operators
4. the 'for loop'
4. iterators and blocks 


while loop: sometimes you want to repeat an action in Ruby while a condition is true, but you don't know how many times you'll have to repeat that action. 

checks to see if a certain condition is true, and while it is, the loop keeps running. as soon as the condition stops being true, the loop stops. 




i = 3
while i > 0 do
  print i
  i -= 1
end

j = 3
until j == 0 do
  print j
  j -= 1
end


counter = 1
while counter < 11
  puts counter
  counter += 1
end

counter 






#flatiron

loop keyword

loop do
  puts "I have found the Time Machine!"
end


break 

counter = 0 
  loop do 
  counter = counter + 1
  puts "Iteration #{counter} of the loop"
  
  if counter >= 10 
  break
 end
end 



times


basic example 

5.times do
  puts "Penguins like to jump off icebergs!"
end



intermediate example 

jewels_in_bag = 100
 
3.times do 
  puts "Hiding 10 stolen jewels."
  jewels_in_bag = jewels_in_bag - 10
end
 
# => 3 (return value)
 
puts "We have #{jewels_in_bag} jewels still to hide!"


--- 



breaks and counters

loop do
  puts "You'll see this exactly once."
  break # Exit the Loop
end
 
puts "And the Loop is Done"

-- 

while loops

num_of_hotdogs_eaten = 0
while num_of_hotdogs_eaten < 7
  num_of_hotdogs_eaten += 1
  puts "You have now eaten #{num_of_hotdogs_eaten} hot dog(s)."
end

--- 

for individual_element in range
  execute some code
end 


