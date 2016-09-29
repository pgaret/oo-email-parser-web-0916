# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  def initialize(list)
    @emails = list
  end

  def parse
    @emails = @emails.split(", ")
    @emails = @emails.collect do |email|
      email.split(" ")
    end
    @emails.flatten.uniq
  end
end
