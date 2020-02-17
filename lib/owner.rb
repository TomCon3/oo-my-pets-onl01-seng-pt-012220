require 'pry'

class Owner
  attr_reader :name, :species, :say_species
  attr_accessor :pets
  
  @@all = []
  
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @say_species = "I am a #{@species}."
    @pets = {:cats => [], :dogs => []}
  end
  
  def self.species
    @species
  end
  
  def self.say_species
    @say_species
  end
  
  def self.all
    @@all
  end
  
  def self.count 
    @@all.size
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cat.all.select {|cat| cat.owner==self}
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner==self}
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    Dog.all.select {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    Cats.all.select {|cat| cat.mood = "happy"
  end
  
  
end