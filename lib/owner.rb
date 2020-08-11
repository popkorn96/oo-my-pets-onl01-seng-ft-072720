class Owner
attr_reader :name, :species
attr_accessor :pets, :cat, :dog
@@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end
  
  def buy_cat(cat)
    cats << Cat.new(cat,self)
  end
  
  def buy_dog(dog)
    dogs << Dog.new(dog,self)
  end

  def walk_dogs
    dogs.each do |dog|
     dog.mood = "happy"
   end
  end
  def feed_cats
    cats.each do |cat|
      cat.mood = "happy"
    end
  end
    
  def sell_pets
    @pets.each do |pet, array_new|
      array_new.each do |pet|
        pet.mood = 'nervous'
    end
      arr.clear
  end
  end
  
  def list_pets
    puts "I have #{pets[:dogs].length}dog(s) and #{pets[:cats].length}cat(s)."
  end
  
  
end
