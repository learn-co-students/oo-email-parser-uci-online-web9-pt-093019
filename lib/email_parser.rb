# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
  attr_accessor :email_addresses, :email_array

  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    email_array = email_addresses.split(/, | /).uniq
  end
end
