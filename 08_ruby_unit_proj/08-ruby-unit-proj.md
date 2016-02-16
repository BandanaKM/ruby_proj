Scenario:

Weather station that uses blocs, procs, and lambdas to communicate the weather.




1. Create an array called cities, and give it four cities: `'North City'`, `'South City'`, `'East City'`, and `'West City'`.


answer code:

```
cities = ['North City', 'South City', 'East City', 'West City']
```


---

2. Write a method `welcome` that takes an argument `cities`. The method should use a block that iterates over each city in the `cities` array, and output a welcome message that says: `"Welcome to the Weather Service, serving #{city}."`

answer code:

```
def welcome(cities)
  cities.each do |city|
    puts "Welcome to the Weather Service, serving the #{city} area."
  end
end
```


---

3. Write a method `daily_temperature`. The method should take argument `num`. The method body should `yield` to a block that outputs "It is going to be #{ } degrees today."

Run the method and pass `10` in as a method argument.

answer code:

```
def daily_temp(num)
  yield(num)
  puts "Be sure to dress accordingly."
end


daily_temp(10) { |num| puts "It is going to be #{num} degrees today." }

```


---


4. Write a method `daily_forecast`. The method should take an argument `weather`. The method body should `yield` to a block that outputs "It is going to be #{ } today."

Run the method and pass `'sunny'` in as a method argument.


```
def daily_forecast(weather)
   yield(weather)
   put "Make the most of this wonderful day."
end

daily_temperature('sunny') { |weather| puts "It is going to be #{weather} today." }

```


----

5. The high temperatures for this week are the following values: `10.87, 5.59, 18.80, 20.21, 6.34, 3.69, 26.13`

Store these temperature in an array called `highs`. Write a method `seven_day_high` that takes `temperature` as an argument and rounds them to the nearest integer.

answer code:

```
def seven_day_high(temperatures)
  rounded_high = temps_array.collect(&rounded)
  puts rounded_high
end

rounded = Proc.new { |x| x.round }
````

VG: I'm not sure I have the variable and argument right here. I call the variable `h_array` but call the argument `temps_array`. Is this still ok?

```
delimit = ->(repeat) { puts '-+=' * repeat }
limit = 30

def seven_day_high(temperatures, blk)
  rounded_high = temperatures.collect(&blk)
  puts rounded_high
end

temperatures = [10.87, 5.59, 18.80, 20.21, 6.34, 3.69, 26.13]
rounded = Proc.new { |x| x.round }

# Three choices here... the first modifies the argument list above...
# but simply passes the Proc
seven_day_high(temperatures, rounded)

delimit[limit]

def seven_day_high(temperatures, &blk)
  rounded_high = temperatures.collect &blk # Note that parenthesis here will break it
  puts rounded_high
end

# The second modifies the argument list as well, above

seven_day_high(temperatures, &rounded)

delimit[limit]


def seven_day_high(temperatures)
  puts temperatures.collect {|x| yield x }
end

# The third doesn't modify the argument list aboe, but is also finally refactored very cleanly.

seven_day_high(temperatures) { |x| x.round }

```

---


6. The low temperatures for this week are as follows: `0.72, -5.44, 8.65, 10.06, -4.19, -3.54, 16.98`.

Store these temperatures in an array called `l_array`.Write a method `seven_day_low` that takes `temps_array` as an argument and rounds them to the nearest integer.

```

def seven_day_low(temps_array)
  rounded_low = temps_array.collect(&rounded_temps)
  puts rounded_low
end

rounded_temps = Proc.new { |x| x.round }
````

VG: I'm not sure I have the variable and argument right here. Same as above.

---


7. Write a method `freezing`.

l_array = `0.72, -5.44, 8.65, 10.06, -4.19, -3.54, 16.98`

This time use the `.call` syntax to call the Proc.

```
def freezing?(my_hash)
end

freezing_temps(low_temps_hash) = Proc.new { |key,value| value < 0 }
```

VG!:

i'd like to yield to a block that collects the values below freezing, and tells the user how many days in the week will be below freezing.

Might pair with you on Friday for this one.


---

8. The array `week_avg` stores the average temperatures for the week as follows `[5, 7, -4, 2, 8, -10, 12]`.

Write a method `symbolize_weekly_temps` that uses a lambda to convert the `week_avg` temperatures into symbols.

answer code:

```
def symbolize_weekly_temps
  symbols = strings.collect(&symbolize)
  puts symbols
end

symbolize = lambda {|x| x.to_sym}
```

---

9. The array `next_week_avg` stores the temperature for next week as follows: `14, "14", -2, "-2", 3, "3", 20, "20", 9, "9", -1, "-1", 0, "0"]`.

Write a method `filter_data` that takes the array `next_week_avg` and filters the integers. Use a Lambda to check if each value is an integer.

answer code:

```
def filter_data(temperature_data)
  integer = my_array.select(&integer_filter)
  puts integer
end

integer_filter = lambda {|x| x.is_a? Integer}
```

---

10. Complete the program runner, such that the program does the following:

It should welcome the user, output the daily temperature, and daily weather. It should tell the weekly highs and weekly lows for the week, and also display what days this week will be freezing.

answer code:

```
welcome()
daily_temperatue(50)
daily_weather("cloudy", "light rain")
freezing
weekly averages into symbols

```

VG: I haven't quite made up the program runner, but I wanted to run this by you and see if this is the propper format.
