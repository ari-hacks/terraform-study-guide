#######
#Numeric Functions 
#######

#abs returns the absolute value of the given number. In other words, if the number is zero or positive then it is returned as-is, but if it is negative then it is multiplied by -1 to make it positive before returning it.
abs(23)
#23

abs(-12.4)
#12.4

#ceil returns the closest whole number that is greater than or equal to the given value, which may be a fraction.
ceil(5)
#5
ceil(5.1)
#6

#floor returns the closest whole number that is less than or equal to the given value, which may be a fraction.
floor(5)
#5
floor(4.9)
#4

#log returns the logarithm of a given number in a given base.
log(number, base)
log(50, 10)
#1.6989700043360185
log(16, 2)
#4

#log and ceil can be used together to find the minimum number of binary digits required to represent a given number of distinct values
ceil(log(15, 2))
#4
ceil(log(16, 2))
#4
ceil(log(17, 2))
#5

#max takes one or more numbers and returns the greatest number from the set.
max(12, 54, 3)
#54
max([12, 54, 3]...)
#54

#min takes one or more numbers and returns the smallest number from the set.
min(12, 54, 3)
#3
min([12, 54, 3]...)
#3

#parseint parses the given string as a representation of an integer in the specified base and returns the resulting number. The base must be between 2 and 62 inclusive. 
parseint("100", 10)
#100

parseint("FF", 16)
#255

parseint("-10", 16)
#-16

parseint("1011111011101111", 2)
#48879

parseint("aA", 62)
#656

parseint("12", 2)

#Error: Invalid function argument
#Invalid value for "number" parameter: cannot parse "12" as a base 2 integer.

#pow calculates an exponent, by raising its first argument to the power of the second argument.
pow(3, 2)
#9
pow(4, 0)
#1

#signum determines the sign of a number, returning a number between -1 and 1 to represent the sign.
signum(-13)
#-1
signum(0)
#0
signum(344)
#1