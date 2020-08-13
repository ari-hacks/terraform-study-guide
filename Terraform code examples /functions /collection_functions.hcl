#######
#Collection Functions 
#######

#chunklist splits a single list into fixed-size chunks, returning a list of lists
chunklist(list, chunk_size)
chunklist(["a", "b", "c", "d", "e"], 2)
[
  [
    "a",
    "b",
  ],
  [
    "c",
    "d",
  ],
  [
    "e",
  ],
]

chunklist(["a", "b", "c", "d", "e"], 1)
[
  [
    "a",
  ],
  [
    "b",
  ],
  [
    "c",
  ],
  [
    "d",
  ],
  [
    "e",
  ],
]


#coalesce takes any number of arguments and returns the first one that isn't null or an empty string
coalesce("a", "b")
#a
coalesce("", "b")
#b
coalesce(1,2)
#1
coalesce(["", "b"]...)  #using with a list of strings 
#b

#coalescelist takes any number of list arguments and returns the first one that isn't empty.
coalescelist(["a", "b"], ["c", "d"])
[
  "a",
  "b",
]
coalescelist([], ["c", "d"])
[
  "c",
  "d",
]

coalescelist([[], ["c", "d"]]...)
[
  "c",
  "d",
]

#compact takes a list of strings and returns a new list with any empty string elements removed.
compact(["a", "", "b", "c"])
[
  "a",
  "b",
  "c",
]

#concat takes two or more lists and combines them into a single list
concat(["a", ""], ["b", "c"])
[
  "a",
  "",
  "b",
  "c",
]

#contains determines whether a given list or set contains a given single value as one of its elements.
contains(list, value)
contains(["a", "b", "c"], "a")
#true
contains(["a", "b", "c"], "d")
#false

#distinct takes a list and returns a new list with any duplicate elements removed.
distinct(["a", "b", "a", "c", "d", "b"]) #first occurrence of the value is keps and ordering is preserved
[
  "a",
  "b",
  "c",
  "d",
]

#element retrieves a single element from a list.


#flatten 

#index

#keys

#length

#list

#lookup 

#map 

#matchkeys

#merge 

#range

#reverse 

#setintersection 

#setproduct 

#setsubtract

#setunion 

#slice 

#sort 

#transpose 

#values 

#zipmap 

