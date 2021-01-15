require 'pry'
class EmailAddressParser
    attr_accessor :csv_emails

    def initialize(csv_emails)

        @csv_emails = csv_emails

    end

    def parse
        remove_commas = @csv_emails.gsub(",", "")
       array = remove_commas.split(" ") 
       array.uniq.collect { |e| e.strip } 
    end


end
binding.pry




# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
