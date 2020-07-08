resource "aws_instance" "web" {
  # ...
  count = 4
}

#address
aws_instance.web[3]

#Refers to only the last instance in the config, and an address like this:
aws_instance.web
#Refers to all four "web" instances.


#for_each
resource "aws_instance" "web" {
  # ...
  for_each = {
    "terraform": "value1",
    "resource":  "value2",
    "indexing":  "value3",
    "example":   "value4",
  }
}

#this address refers to only the "example" instance in the config.
aws_instance.web["example"]
