

Object Oriented Programming Part 2

Why do we use OOP?
- Encapsulation: you draw a boundary around a set of related data and behaviors and can give it a name
- lets you split up in to sections and makes it easy to collab
Abstract: King of like a car, we dont know how it works but we know how to use it.
- can do something w/o knowing how it works, just need to know how it behaves.
- can use work from other people and build on it without necessarily knowing how it works

Information Hiding:
- had to write a reader method to see how many pizzas remaining, by default it is secure

Ruby
Everything is an Object

everything in ruby has a method called .class (p.class will return pizzaria)--> pizza.class is pizza, can use .class to see what the class is.
- can do this to a string because its an object "examplestring".class
  - string.length --> returns 6 for 6 characters.
  Objects have methods
  -> 5.+(2) = 7. (.+ is a method)

the DOT means invoke. 2.times --> invoke this method on 2

Inheritance: create classes that share some things in common but not everything
- A house and an apartment are both buildings, so they share that in common
- A cat and a dog are both mammals
- Definne a class that can inherit the behavior of a parent class
- You put specialized behavior in to the class that needs it and nothing more. If it applies to everything beneath it (its children, put it in parent)
- You get all of the behaviors of the parent, can't pick and choose', but you can ovverride the behavior of the parent class
- Can use 'super' to override parent class, by calling the method of the superclass (parent) (so you don't repeat yourself')
- If method of parent does not apply, you have to initialize a new method. (so if you want to add a field of study to PROFESSOR, because it is in the 'person' class and not every person has a field
of study, we would need to initialize 'professor') (if you want to set a default of 0, for example students when they start have knowledge 0, you would initialize 'super' (as STUDENTS but as not to repeat))
                 Animals
                -breathe
               /         \
          Mammal        Reptile
          -walk         -crawl
          /  \
      cat    dog
  -meow

class < person (< means 'inherits' from person) --> in addition to being a proffessor they are also a person so we want it to inherit person class

class professor < person (to determine what you want to define, ask yourself what teachers do students cant -> teach)
def teach
  "blah blah blah"
end

class student < person

attr_reader: knowledge_level (to check if it works)

  def initialize(first_name, last_name, year_of_birth)
    super(first_name, last_name, year_of_birth)
    @knowledge_level = 0
    end
def learn
  @knowledge_level += 1
end

def teach(student) (what does a professor need to teach/ what do we need to do to chagne this)
@knowledge_level += 1
end
Want professor to teach a specific student

can use .superclass to go one level up (charles.class.superclass) (can also do charles.class.superclass.superclass.superclass)
professor.teach.charles (.method

realistically, professors would teach more than one student
- make the argument an array to do so.
  - arrays dont have a learn method, so we have to iterate through the
  def teach(students)
    students.each { |student| student.learn} ---> tells computer: go through the array (each student), and for each student tells them to learn.
    students = {s1, s2, s3}
    students.class = arraystudents[0].class returns student
    einstein.teach(students)
    einstein.teach(s1) (won't work, student class doesn't have each method, only array does)
    - einstein.teach({s1}) --> need to make it into an array

instance is an object
-state of an instance stored in an instance Variable
-state of behavior of an instance is stored in instance methods (see table below)
-what is a class vs instance? There are many instances that can be created for a class. A class is a recipe from which many instances can be created.
-recipe for pancakes, recipe is a class. When you make the pancakes, that is an instance of pancakes. How many pancake classes can I have? --> infinite. Can only have
ONE class though, classes are unique. Instances are all unique from eachother (you make pancakes twice, they are different). How gold is the pancake? Would store in an
instance variable
- Blueprint = class, all the instances (other houses) are different, but the blueprint (class) may be the same
- an instance of something is an object (to be an object just needs a state and behavior)
- classes are objects, so they have states. But this wouldnt go in an instance of a pancake
-classes are born when program starts and die when it ends
- can store the number of pancakes ever made in pancake class, not the instance --> does the total number have to do with one instance that might be on your plate?
  - No it doesnt, but the recipe cars.
  - a variable exists only within its block, can't store in local Variable'
  -remember behavior modifies state. Class method is used to modify a class variable.
  - we create a house by looking at blueprint (method) to create house. Then use .new to make a new house or build a house. .new is a method on a class, so it is
  a class method
  - p = Person.new ("John", "Jones", "1900")
  person.class returns class


- because classes are also classes they can have methods.
-creates an instance and runs initialize on that instance --> what state does this method modify? --> Doesn't, method doesn't modify a state always, but if you want to modify a state
you must use a method
- could have a demolish method on a class. --> pass instance of a house in to demolish, then subtract number of houses by 1.



    object       |      instance   |     Class
    ---------------------------------------------
    State       | Instance Variable| Class Variable
    behavior    | Instance Method  |Class method


class Item
  @@num_total = 0
  @@num__loaned = 0#two @ is a class variable
  attr_reader : title

#class variable reader 'self.num_total'
  def self.num_total #self represents ITEM in this example, self refers to the method it is in
    @@num_total #so it returns class variable
  end
  def self.num_checked_out
    @@num_loaned
  end

  def initialize(title)
  @title = title

  @loaned = false

  @@num_total += 1
  end
  def check_out #when we check out a book, we should mark it as checked out / can't be checked out again
    unless @loaned
      @loaned = true
      @@num_loaned += 1
  end
  def check_in #can only check in a book if it is loaned
    if @loaned
      @loaned = false
      @@num_loaned -= 1
  end
end

#book goes up by one when the item is initialized
#when I create a new piece of music the number total should go up by one
  #if you customize initialize you must call super (instead of repeating
  #need a class method ot access a class variable)
