class Rental

  attr_reader :bike

  def initialize(bike:, luggage:)
    @bike = bike
    @luggage = luggage
  end

  def price(bike_price:, bike_weight:, luggage_weight:)
    bike_price + (2 * bike_weight) + (2 * luggage_weight)
  end

  def weight(bike_weight:, luggage_weight:)
    bike_weight + luggage_weight
  end

end
