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


#tolist 



#tomap

#tonumber  

#toset  

#tostring  

#try 

