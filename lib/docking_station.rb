require_relative 'bike'

class DockingStation

  attr_reader :bike

  # def initialize
  #   @bike
  # end

  def release_bike
    fail("No bike available") if bike.nil?
    @bike
  end

  def dock(bike)
    @bike = bike
  end

end
