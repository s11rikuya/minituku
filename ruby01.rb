class Library
def initialize 

  @lists= []
end 
 def add_lists(content)
  @lists.push(content)
 end
 def to_s
  puts " Library contents:"
  @lists.each do |list|
  puts  "Title:#{list[:title]},Author:#{list[:author]}"
  end
 end
end



class Book
  def initialize(hash = {})
    @author = hash[:author]
    @title = hash[:title]
    @library = hash[:library]
    @library.add_lists(hash)
  end
end

my_library = Library.new
Book.new(:author => "Herman Melville", :title => "Moby-Dick", :library => my_library)
Book.new(:author => "Hans Christian Andersen", :title => "The Ugly Duckling", :library => my_library)
puts my_library

