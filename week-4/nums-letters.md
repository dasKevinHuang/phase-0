### Release 1: Summarization Questions

####What does 'puts' do?

`puts` is a way to output to console with a new line at the end. Writing `puts` will return nil. Somewhat related to `puts` is `prints`, which will print to console, but without a new line. 

`puts` and `print` are examples of how simple Ruby is to write code with.
To illustrate, consider the following code:

```
puts "Hello there!"
print "This second line will not print a new line at the end. "
puts "See? It's much easier in Ruby!"
```
This will output:

```
Hello there!
This second line will not print a new line at the end. See? It's much easier in Ruby!
```

You could compare this to C++ or Java, which are commonly used as languages taught to students.

C++
```
#include <iostream>
int main()
{
	std::cout >> "Hello there!" >> endl;
	std::cout >> "This second line will not print a new line at the end. ";
	std::cout >> "See? It's much easier in Ruby!";
}
```

or

Java
```
public class Output{
	public static void main(String[] args){
	System.out.println("Hello there!");
	System.out.print("This second line will not print a new line at the end. ");
	System.out.print("See? It's much easier in Ruby!");
	}
}

```

Notice how much easier it is to output this simple passage in Ruby compared to other common languages?

####What is an integer? What is a float?

An `integer` is a data type that can be any number without decimal points.
Here are a few examples of integers:

```
2332634643
2
5363
50005
```

You can initialize an integer variable using the *assignment operator* `=` by writing:
`int x = 12`

A `float` is a data type is a number with decimal points - or sometimes called `floating-point numbers`. 

Here are a few examples of floats:

```
2.2
1000.4205005
0.336643
```

You can initialize a float variable with values using the *assignment operator* `=` by writing:
`x = 2.2`

####What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

The major difference between float and integer division is the respect for decimal points. Integer division *will not* take account of decimal points or remainders when dividing, causing the result of `21 / 2` to be cut off at the decimal point resulting in `10`.

Float division will actually take the resulting decimal point into account and show the final result as `10.5`. This is important to take note of to avoid any mathematical logic errors.

### Release 2: Mini-Challenges

#### Program to calculate and output Hours in a year

Code
```ruby
days_in_year = 365
hours_per_day = 24
hours_per_year = days_in_year * hours_per_day
puts "Given " + days_in_year.to_s + " days in a year and " + hours_per_day.to_s + " hours per day,"
puts "We can calculate that there are " + hours_per_year.to_s + " hours in a year."

// Extra tip: When concatenating numbers and strings this way, you have to convert the object into a string before it can be used. The method .to_s will do this.

Output
```
Given 365 days in a year and 24 hours per day,
We can calculate that there are 8760 hours in a year.
```
#### Program to calculate Minutes in a decade

Code
```ruby
years_in_decade = 10
days_in_year = 365
hours_per_day = 24
minutes_per_hour = 60
minutes_in_decade = years_in_decade * days_in_year * hours_per_day * minutes_per_hour
puts "There are " + minutes_in_decade.to_s + " minutes in a decade."
```

Output
```
There are 5256000 minutes in a decade.
```