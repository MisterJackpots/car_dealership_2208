class Car
  attr_reader :make,
              :model,
              :monthly_payment,
              :loan_length,
              :total_cost,
              :color

  def initialize(name, monthly_payment, loan_length)
    @name = name
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @make = name.split.first
    @model = name.split.last
    @total_cost = monthly_payment*loan_length
    @color = nil
  end

  def paint!(car_color)
    @color = car_color
  end

end