cmake_minimum_required(VERSION 3.2)
message("Before comments")
#message("Single line comment")
#[[
message("Multiline comment") #]]
#[[
message("Another Multiline comment")
#[=[
message("Nested comment")
]=]
# message("single line comment, not closing multiline")
]]
# Using '#' before closing bracket enclosure allows disabling of opening bracket by adding a second # 
# without causing a syntax error
message("After comments")

# Bracket arguments are not evaluated and can include newlines and tabs
message([[This is a
  bracket
    argument]])

message([=[ Bracket arguments
  [[ do not nest ]] ]=])

# Quoted arguments require escape sequences for newline, \, etc.; can span multiple lines; can include variables
message("Quoted argument
 with newline \n and escaped slash \\ and quote \"; also
 variable substitution; Version: ${CMAKE_VERSION}")

# Unquoted arguments have to escape spaces and ;'s
message(This\ is\ one\ argument)
message(This is three)
message(This;is;three)

# assign to variables using set/unset
# access via ${}
set(test value)
message(${test})

set([[bad but valid name]] value)
message(${bad\ but\ valid\ name})

# nested var references are evaluated inside out
set(newvalue "This is the value")
set(var2 value)
message(${new${var2}})

# envirionment vars accessed with $ENV{}
#message($ENV{HOSTNAME})

# lists are variables with multiple values
set(mylist this is a list)
message(${mylist})
set(mylist this is "also;a;list")
message(${mylist})

list(LENGTH mylist mylength)

message(${mylength})
