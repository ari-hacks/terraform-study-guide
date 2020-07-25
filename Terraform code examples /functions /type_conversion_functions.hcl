#######
#Type Conversion Functions 
#######

#can evaluates the given expression and returns a boolean value indicating whether the expression produced a result without any errors.
#Usually better to use try instead
#main use is to turn an error condition into a boolean validation result with custom variable validation rules. 
variable "timestamp" {
  type        = string

  validation { # NOTE: custom validation is currently an opt-in experiment (see link above)
    # formatdate fails if the second argument is not a valid timestamp
    condition     = can(formatdate("", var.timestamp))
    error_message = "The timestamp argument requires a valid RFC 3339 timestamp."
  }
}
local.foo
# {
#   "bar" = "baz"
# }
can(local.foo.bar)
#true
can(local.foo.boop)
#false
can(local.nonexist)
#Error: Reference to undeclared local value
#A local value with the name "nonexist" has not been declared.

#tobool converts its argument to a boolean value.
#Only boolean values and the exact strings "true" and "false" can be converted to boolean. All other values will produce an error.
tobool(true)
#true
tobool("true")
#true
tobool("no")
#Error: Invalid function argument
#Invalid value for "v" parameter: cannot convert "no" to bool: only the strings
#"true" or "false" are allowed.
tobool(1)
#Error: Invalid function argument
#Invalid value for "v" parameter: cannot convert number to bool.


#tolist converts its argument to a list
#use explicit coversion functions only to normalize types returned in module outpus
#pass a set value to tolist to convert it to a list
tolist(["a", "b", "c"])
[
  "a",
  "b",
  "c",
]

tolist(["a", "b", 3])
[
  "a",
  "b",
  "3", #mixed-typed elements convert to the most general type 
]

#tomap converts it argument to a map value
tomap({"a" = 1, "b" = 2})
{
  "a" = 1
  "b" = 2
}
tomap({"a" = "foo", "b" = true})
{
  "a" = "foo"
  "b" = "true"
}

#tonumber converts its argument to a number value
tonumber(1)
#1
tonumber("1")
#1
tonumber("no")
#Error: Invalid function argument
#Invalid value for "v" parameter: cannot convert "no" to number: string must be
#a decimal representation of a number.

#toset converts its argument to a set value
toset(["a", "b", "c"])
[
  "a",
  "b",
  "c",
]

toset(["a", "b", 3])
[
  "a",
  "b",
  "3",
]

toset(["c", "b", "b"]) #set collections are unorderes and can't contain duplicate values
[
  "b",
  "c",
]

#tostring converts its argument to a string value
#Only the primitive types (string, number, and bool) can be converted to string. All other values will produce an error.
tostring("hello")
#hello
tostring(1)
#1
tostring(true)
#true
tostring([])
#Error: Invalid function argument
#Invalid value for "v" parameter: cannot convert tuple to string.

#try evaluates all of its argument expressions in turn and returns the result of the first one that does not produce any errors.
local.foo
{
  "bar" = "baz"
}
try(local.foo.bar, "fallback")
baz
try(local.foo.boop, "fallback")
fallback


