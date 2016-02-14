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


3. So far we learned that we can create a new array by setting a variable equal to `Array.new` or `[]`. In addition, Ruby allows us to use methods that can create array objects out of other objects, The `.split` method when called on a string, turns a block of text into an array.

Declare a variable called `words` and set it equal to the result of calling the `.split` method on `text`. 


```ruby
words = text.split(" ") 
```

Bana notes; explain how the .split method 


3. We'll now start counting words using a hash. To do this, we'll use a default value. 

```ruby
rocks = Hash.new("granite")
puts rocks
# => {}

puts rocks[igneous]
# => granite 

```

Create a hash called `frequencies` in the editor. Give it a default value of `0`. 


```ruby
frequencies = Hash.new(0)
````


4. Use an `.each` iterator to iterate over the `words` array. For each word, assume that the word is a key and the number is the value. Each time we encounter that word we increment its value by `1`.

We can do this in the following way

```
rocks = {"igneous" => 2, "sedimentary" => 3, "metamorphic" => 1}
rocks["sedimentary"] += 1
puts rocks["sedimentary"]
# => 4
```

Notice the `+=` operator increases the value of for the `sedimentary` by `1`, such that the final count is `4`. 


```
words.each {|word| frequencies[word]+= 1}
```


5. We have a hash full of `word` and `frequency` key-value pairs. 

```
rocks = {"igneous" => 3, "sedimentary" => 1, "metamorphic" => 2}
rocks = rocks.sort_by do |rock, count|
  count
end
rocks.reverse!
```

What is going on here?


6. 
