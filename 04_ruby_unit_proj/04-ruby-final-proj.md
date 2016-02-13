Metro City Trains train system was built over a century ago. 


1. Metro City Trains wants a way to communicate the words 'All aboard!' to their passengers. 

Create a `loop` construct that output 'All aboard!' to passengers. Be sure to use the `break` keyword to avoid passengers hearing an infinite loop. 


```
loop do 
  puts "All aboard!"
  break 
end 
```

purpose 


2. Metro City trains has a total of 12 cars. The conductor needs a way to announce to passengers that it is collecting tickets in ascending order, starting with car 1 and ending in car 8.

Write a `loop` construct that uses a counter. The counter should "Now collecting tickets for passengers in X train". The counter should increment by 1, such that  If the counter reaches 13, the loop should stop running.  

```
loop do 
  counter += 1
   puts "Now collecting tickets for passengers #{1} train"
   if counter = 13
     break
   end
  end 
end 
```

purpose:



3. There are 38 stations along the each Metro City Train line. Using a `for` construct as a loop, for stations 1 through 38, output "The train is now approaching the next station."


for stations in 1..38 do
  puts "The train is now approaching our next station."
end


purpose 



4. Metro City Trains would like to update the last program you wrote. They would like to ensure that passengers know which station number is arriving. 

Change the `for` construct such that `all_stations` represents a range of stations 1 through 38 on the train line. The `for` loop such that it outputs "The train is now approaching our next station. We are at station number #{ }" for each of the 38 stations. 

all_stations = 1..38
 
for station in all_stations 
    puts "The train is now approaching our next station. We are at station number #{station}" 
end


purpose: for the number in a range 


5. A few of the train lines only have 37 stops. Write a new for loop for stations 1 through 37. 

```
for stops in 1..37 do
  puts "The train is now approaching the next station We are at station number #{station}."
end
```



6. while loop

The train also calculates the number of kilometers traveled. Each day, the train travels 200 miles to dro- passengers off at their respective stations. 

```
miles_traveled = 0
while miles_traveled <= 150
  miles_traveled += 5
  puts "The train has traveled #{miles_traveled}."
end
```


7. while loop 

The train also calculates the number of kilometers traveled. Each day, the train travels 200 miles to dro- passengers off at their respective stations. 

```
miles_left = 150
while miles_traveled <= 150
  miles_traveled += 5
  puts "The train has traveled #{miles_traveled}."
end
```


8. until loop


speed



9. until loop 


speed



--- 


10. each 




11. each




12. times




13. times 




