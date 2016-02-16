def seven_day_low(temperatures, rounded_temps)
  temperatures.collect(&rounded_temps)
end

rounded_temps = Proc.new { |x| x.round }
# Taking advantage that strings converted to floats will work, though floats in
# Ruby need to have a number before the decimal place otherwise they will fail
# Also, using the square brackets here only due to my personal preference, not to "style guide"
low_temperatures = %w[.72 -5.44 8.65 10.06 -4.19 -3.54 16.98]

low_temperatures.collect!(&:to_f) # convert my strings to floats
puts seven_day_low(low_temperatures, rounded_temps)

# >> 1
# >> -5
# >> 9
# >> 10
# >> -4
# >> -4
# >> 17
