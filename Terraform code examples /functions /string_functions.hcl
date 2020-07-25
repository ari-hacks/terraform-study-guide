#######
#String Functions 
#######

#chomp removes newline characters at the end of a string
#used if string was read from a file that has a newline character at the end. 
chomp("hello\n")
hello
chomp("hello\r\n")
hello
chomp("hello\n\n")
hello

#format same as print function in other languages
format("Hello, %s!", "Ander")
Hello, Ander!
format("There are %d lights", 4)
There are 4 lights

format("Hello, %s!", var.name)
Hello, Valentina!
"Hello, ${var.name}!"
Hello, Valentina!

#formatlist produces a list of strings by formatting a number of other values according to a specification string.
formatlist(spec, values...)
formatlist("Hello, %s!", ["Valentina", "Ander", "Olivia", "Sam"])
[
  "Hello, Valentina!",
  "Hello, Ander!",
  "Hello, Olivia!",
  "Hello, Sam!",
]
formatlist("%s, %s!", "Salutations", ["Valentina", "Ander", "Olivia", "Sam"])
[
  "Salutations, Valentina!",
  "Salutations, Ander!",
  "Salutations, Olivia!",
  "Salutations, Sam!",
]

#indent adds a given number of spaces to the beginnings of all but the first line in a given multi-line string.
 

#join 

#lower 

#regex

#regexall 

#replace 


#split 

#strrev 

#substr 

#title 

#trim 

#trimprefix 

#trimsuffix 

#trimspace 

#upper 