
### 1. Creating Arrays

```
my_array = [1, 2, 3, 4, 5, 6, 7]
```
my_array = [1,2,3,4,5]



### 2.  Accessing Array by Index

```
demo_array = [100, 200, 300, 400, 500]
print demo_array[2]
```



###  3. Arrays of Non-Numbers

```
string_array = ["apple", "orange", "banana", "peach", "plum", "watermelon"]
```


###  4. Arrays of Arrays

```
multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
multi_d_array.each { |x| puts "#{x}\n" }
```



### Creating Your Own

```
my_2d_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]]
```


###  Introduction to Hashes

```
my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]

Using Hash.new
my_hash = Hash.new
```


### Accessing Hash Values

```
Hash.new
pets ["Agy"] = "dog"

puts pets["Agy"]
```


### (Re)Introduction to Iteration

Iterating over arrays

Iterating over hashes

Iterating multidimensional arrays
