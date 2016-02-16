#blocksprocslambas

# blocks (times)
# map/collect
# yielding (yielding with parameters)
# proc 
# lambda






# blocks, procs, and lambdas


2. Ruby block syntax

[1, 2, 3].each do |num|
  puts num
end 


[1, 2, 3].each { |num| puts num }


a block is like a nameless method. blocks use either do...end or curly braces. 

collect method. 

The collect method takes a block and paplies the expression in the block to every element in the array. 

my_nums = [1,2,3]
my_nums.collect { |num| num**2}
# ==> [1, 4, 9]

my_nums.collect! { |num| num ** 2 }
# ==> [1, 4, 9]
my_nums
# ==> [1, 4, 9]








3. Learning to Yield

methods that accept blocks have a way of transferring controll from the calling method to the block and back again. 
yield keyword.

jump out of the method, jump back into the method. 


 def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }



4. Passing parameters to yield 

```
def yield_name(name)
  puts "In the method! Let's yield."
  yield(name)
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }

# Now call the method with your name!
yield_name("Bana") do 
    |n| puts "My name is #{n}"
end
```

when it yields, it just allows you to call a block for that part. 
you can pass in an argument so that the block is part of the argument itself. 



Output 

In the method! Let's yield.
My name is Eric.
In between the yields!
My name is Eric.
Block complete! Back in the method.

In the method! Let's yield.
My name is Bana
In between the yields!
My name is Bana
Block complete! Back in the method.


5. Try it youtself 

def double(x)
  yield x
end

double(8) { |i| i * 2 }


def squared(x)
    yield x
end

squared(8) { |i| i ** 2 }

====== 

Procs are saveable blocks

blocks are not objects. they can't be saves to varilables and don't have the powers and abilities of a real object. 

for this, we need procs. 

proc is a saved blocks. just like you can give code a name and turn it into a method, you can name a block and turn it into a proc. 

procs are great for keeping code dry. 



6. Example of Proc

multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

(1..100).to_a.select(&multiples_of_3)


7. Proc syntax. 

Procs are easy to define. You simply call Proc.new and pass in the block you want to save. 
cube = Proc.new {|x| ** 3 } 

[1,2,3]

We could then pass the proc to a method that would otherwise take a block, and we don't have to rewrite the block over and over. 

[1, 2, 3].collect!(&cube)
# ==> [1, 8, 27]
[4, 5, 6].map!(&cube)
# ==> [64, 125, 216]


Another example of a proc, using floats. 


floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Write your code below this line!

round_down = Proc.new { |x| x.floor }

ints = floats.collect(&round_down)



# Write your code above this line!

--- 


7. Why Procs?

Why bother saving blocks as procs? two main reasons. Procs are objects, and so they have all the power and abilities of objects. 

Unlike blocks, procs can be called over an dover without rewriting them. Applying the same block of checking on every single block here. 

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# Complete this as a new Proc
over_4_feet = Proc.new { |x| x >= 4 }

# Change these three so that they use your new over_4_feet Proc
can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

print can_ride_1
print can_ride_2
print can_ride_3

--- 


8. Create your own proc 

def greeter()
    yield
end

phrase = Proc.new {puts "Hello there!"}

greeter(&phrase)



8. Call Me Maybe

hi = Proc.new {puts "Hello!"}
hi.call



9. Symbols meet procs

You can pass a Ruby method around with a symbol. This will call a method on every element of a string. 

strings = ["1", "2", "3"]
nums = strings.map(&:to_i)


numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
strings_array = numbers_array.collect(&:to_s) 

====

The Ruby Lambda 

Like procs, lambdas are objects. 

lambda { puts "Hello!" }
Proc.new { puts "Hello!" }



Sample lambda 

def lambda_demo(sample)
  puts "I'm the method!"
  sample.call
end

lambda_demo(lambda { puts "I'm the lambda!" })



13. Lambda Syntax

Lambdas are defined using the following syntax:
lambda { |param| block }

If you think procs and lambdas are similar, they are! A lambda will through and an




14. Lambdas vs. Procs

A lambda checks the number of arguments passed into it, while a proc doe sno. This means that a lambda will through an error if you pass it the wrong number of arguments, whereac a proc will ignore unexpected arguments. (not sure about this one)


When a lambda returns, it passes control back to the calling method. When a proc returns, it does so immediately, without going back to the calling method. 

To see how this works, take a look at the code in the code editor. 



15. See how the proc says Batman will win? This is because it returns immediately, withough going back to the batman_ironman_proc

def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda


# returns

Batman will win!
Iron Man will win!



