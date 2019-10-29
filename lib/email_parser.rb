# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
attr_accessor :string_input, :addresses #an array of string email addresses

def initialize(string)
@string_input = string
end # end of initialize

def parse

  @addresses = string_input.split(" ")
  new_array = @addresses.collect {|address|address.delete(",")}

i = new_array.length - 1
while i >= 0
  if (new_array.select {|x| x == new_array[i]}.length > 1)
        new_array.delete_at(i)
  end # end of if block
i -= 1
end #end of while loop
new_array
end #end of method



end #end of class EmailAddressParser
