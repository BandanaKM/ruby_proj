In this project, we'll build a program that takes a user's input, and builds a hash from that input. Each key in the hash will be a word from the user; each value will be the number of times that word occurs. For example, if our program gets the string "the rain in Spain falls mainly on the plain," it will return:

```
the 2
falls 1
on 1
mainly 1
in 1
rain 1
plain 1
Spain 1
```

You can think of this as a way of creating a histogram. 


1. To begin, output a message to the user that tells them to "Insert Text". 


```ruby
puts "Insert Text"
```

2. We have a message that instructs the user to input text. Declare a variable `text` and set it equal to the user input. Recall that you can do this using `gets`. 


```
text = gets.chomp 
```


3. So far we learned that we can create a new array by setting a variable equal to `Array.new` or `[]`. We can also use Ruby methods that can create array objects out of other objects, The `.split` method when called on a string, turns a block of text into an array.

Declare a variable called `words` and set it equal to the result of calling the `.split` method on `text`. 


```ruby
words = text.split(" ") 
```


3. We'll now start counting words using a hash. To do this, we'll use a default value, as shown here: 


```ruby
rocks = Hash.new("granite")
puts rocks
#   => {}

puts rocks[igneous]
#   => granite 

```

Create a hash called `frequencies` in the editor. Give it a default value of `0`. This ensures that every word in the frequencies hash has a default value of 0. 


```ruby
frequencies = Hash.new(0)
````


4. We now want to iterate over words to add each word to the frequencies hash, one at a time. We can do this by using the `+=` to increment the value of a hash. We can do this as such: 

```
rocks = {"sedimentary" => 2, "metamorphic" => 3, "igneous" => 5}
rocks["metamorphic"] += 1
puts rocks["metamorphic"]
#  => 4
```

Iterate over each work in the words array. For each word, assume that it is a key in to increment the word by 1.


```
words.each {|word| frequencies[word]+= 1}
```


5. The sorting part I don't understand so much. 


rocks = {"sedimentary" => 2, "metamorphic" => 4, "igneous" => 5}
rocks = rocks.sort_by do |type, count|
  count
end
rocks.reverse!

# this is a way to get the information in the order we want it. 
# we have a hash called colors that maps color strings to numbers. 

# we sort rocks into, sedimentary, metamorphic, igenous. 
# the sort_by method returns an array of arrays. 



6. 
