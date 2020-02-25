class Quote
  attr_accessor :quote, :author, :categories
  
  @@all = []
  
  def initialize(quote)
    @quote = quote
    @@all << self
  end
  
  def self.all
    @@all
  end
  
   def self.search_or_new(item)
    object = @@all.select{|a| a == item}
    if object == []
      object = Quote.new(item)
      object
    else
      object
    end
  end

end