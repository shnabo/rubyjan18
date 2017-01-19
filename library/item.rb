
class Item
  @@num_total = 0
  @@num_checked_out = 0#two @ is a class variable
  attr_reader : title

#class variable reader 'self.num_total'
  def self.num_total #self represents ITEM in this example, self refers to the method it is in
    @@num_total #so it returns class variable
  end
  def self.num_checked_out
    @@num_checked_out
  end

  def initialize(title)
  @title = title

  @loaned = false

  @@num_total += 1
  end
  def check_out #when we check out a book, we should mark it as checked out / can't be checked out again
    unless @loaned
      @loaned = true
  end
  def check_in #can only check in a book if it is loaned
    if @loaned
      @loaned = false
  end
end

#book goes up by one when the item is initialized
#when I create a new piece of music the number total should go up by one
  #if you customize initialize you must call super (instead of repeating
  #need a class method ot access a class variable)
