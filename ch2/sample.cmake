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

