<em>RELEASE 1</em>

<b>What does puts do?</b><br>
puts is a command that simply writes on the screen whatever is placed after it. However, there is a difference between the command p, puts, and print. puts in particular can return nil, and the output is always printed to the console with a new line.

<b>What is an integer? What is a float?</b><br>
An integer is a whole number that is displayed without the decimal point.<br>
A float is a number with a decimal point, and is also called a floating-point number.<br>
Both floats and integers can be positive or negative.

<b>What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?</b><br>
Integer division may be counterintuitive at first, but whenever your result normally wouldn't be a whole number on a calculator, ruby will actually round that result down to the nearest integer. For example, 11 divided by 2 will result in 5, and not 5.5 as you'd expect. Float division will return that 5.5 for you, since it will have no problem returning a float.<br>


<em>RELEASE 2</em>

<b>Hours in a year</b>

```ruby
def hrs_in_yr
puts "Input # of years"
years = gets.to_i 
hours = years*365*24
return hours
end
```

<b>Minutes in a decade</b>

```ruby
def min_in_dec
puts "Input # of decades"
decades = gets.to_i 
min = decades*365*10*24*60
return min
end
```


<em>RELEASE 5</em>

<b>Defining variables</b> 
https://github.com/Yoonis/phase-0/blob/master/week-4/defining-variables.rb

<b>Simple string methods</b>
https://github.com/Yoonis/phase-0/blob/master/week-4/simple-string.rb

<b>Local Variables and Basic Arithmetical Operations</b>
https://github.com/Yoonis/phase-0/blob/master/week-4/basic-math.rb


<em>RELEASE 7</em>

<b>1. How does Ruby handle addition, subtraction, multiplication, and division of numbers?</b><br>
If the numbers in the calculation are floats, then Ruby handles these operations like a normal calculator would. If the numbers in the calculation are integers, then things are different. Any time the result is expected to return a float value, Ruby will round the result down to the nearest integer value.

<b>2. What is the difference between integers and floats?</b><br>
An integer is a whole number that is displayed without the decimal point. A float is a number with a decimal point, and is also called a floating-point number.

<b>3. What is the difference between integer and float division?</b><br>
Any time the result of an integer division operation is expected to return a float value, Ruby will round the result down to the nearest integer value. Float division will return a float value.

<b>4. What are strings? Why and when would you use them?</b><br>
Strings are objects that hold an arbitrary sequence of characters. You can use strings to store information. Then you can manipulate the information in your strings in many ways using methods, or simply by "adding" and "multiplying" the strings like with basic math operations.

<b>5. What are local variables? Why and when would you use them?</b><br>
Local variables are objects that store information of many datatypes (fixnum, strings, etc) to minimize the need for redundant typing. You can assign different values to the same variable, keeping in mind that will overwrite the previous value you designated to that variable. Just like strings, you can manipulate variables in all kinds of ways with methods too.

<b>6. How was this challenge? Did you get a good review of some of the basics?</b><br>
This was a fairly simple recap challenge that, in my opinion, was needed after weeks of setup and front end. I also really enjoyed Chris Pine's book because his writing is very easy to read and absorb. 