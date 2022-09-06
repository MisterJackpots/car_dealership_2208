class Dealership
  attr_reader :name, 
              :address,
              :inventory,
              :inventory_count
  
  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
  end

  def add_car(car)
    @inventory << car
    @inventory_count += 1
  end

  def has_inventory?
    @inventory_count > 0
  end

  def cars_by_make(maker)
    @inventory.find_all {|car| car.make == maker} 
  end

  def total_value
    total_value = @inventory.map {|car| car.total_cost}
    total_value.sum
  end
  
  def details
    {"total_value" => self.total_value, "address" => @address}
  end

  def average_price_of_car
    (total_value / @inventory_count).to_s.gsub(/\B(?=(...)*\b)/, ',')
  end

  def cars_sorted_by_price
    @inventory.sort_by {|car| car.total_cost} 
  end

  def inventory_hash
    @inventory.attributes
  end
  
end