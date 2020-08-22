#######
#Encoding Functions 
#######

#base64decode takes a string containing a Base64 character sequence and returns the original string. 
base64decode("SGVsbG8gV29ybGQ=")
#Hello World

#base64encode applies Base64 encoding to a string.
base64encode("Hello World")
#SGVsbG8gV29ybGQ=

#base64gzip compresses a string with gzip and then encodes the result in Base64 encoding.
 

#csvdecode decodes a string containing CSV-formatted data and produces a list of maps representing that data.
csvdecode("a,b,c\n1,2,3\n4,5,6")
[
  {
    "a" = "1"
    "b" = "2"
    "c" = "3"
  },
  {
    "a" = "4"
    "b" = "5"
    "c" = "6"
  }
]

#jsondecode interprets a given string as JSON, returning a representation of the result of decoding that string.
jsondecode("{\"hello\": \"world\"}")
# {
#   "hello" = "world"
# }
jsondecode("true")
#true

#jsonencode encodes a given value to a string using JSON syntax.
 jsonencode({"hello"="world"})
#{"hello":"world"}

#urlencode applies URL encoding to a given string.
urlencode("Hello World")
# Hello%20World
urlencode("☃")
# %E2%98%83
"http://example.com/search?q=${urlencode("terraform urlencode")}"
# http://example.com/search?q=terraform%20urlencode


#yamldecode parses a string as a subset of YAML, and produces a representation of its value.
 yamldecode("{\"hello\": \"world\"}")
# {
#   "hello" = "world"
# }


#yamlencode encodes a given value to a string using YAML 1.2 block syntax.
 yamlencode({"a":"b", "c":"d"})
# "a": "b"
# "c": "d"

yamlencode({"foo":[1, 2, 3], "bar": "baz"})
# "bar": "baz"
# "foo":
# - 1
# - 2
# - 3

