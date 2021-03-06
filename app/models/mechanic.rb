class Mechanic

  attr_reader :name, :specialty
@@all=[]
def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
@@all 
end

def cars
  Car.all.select {|car| car.classification==self.specialty}
end

def car_owners
  cars.map {|car| car.owner}
end

def car_owner_names
  car_owners.map {|owners| owners.name}
end
end
