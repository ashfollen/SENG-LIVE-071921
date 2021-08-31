class Dog 
  attr_accessor :name, :age, :breed, :favorite_treats, :last_walked_at, :last_fed_at
  def initialize(name, age, breed, favorite_treats)
    @name = name
    @age = age
    @breed = breed
    @favorite_treats = favorite_treats
  end

  def walk
    @last_walked_at = DateTime.now
  end

  def feed
    @last_fed_at = DateTime.now
  end

  def needs_a_walk?
    if @last_walked_at
      @last_walked_at < 4.hours.ago
    else
      true
    end
  end

  def needs_a_meal?
    if @last_fed_at
      @last_fed_at < 6.hours.ago
    else
      true
    end
  end

  def print
    puts ""
    puts @name.light_green
    puts "  age: #{@age}"
    puts "  breed: #{@breed}"
    puts "  favorite_treats: #{@favorite_treats}"
    puts "  restless: #{needs_a_walk?}"
    puts "  hungry: #{needs_a_meal?}"
    puts ""
  end

end