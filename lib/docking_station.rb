require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail("No bike available") unless @bikes.length > 0
    @bikes.pop
  end

  def dock(bike)
    fail("Docking Station Full") if @bikes.length >= 20
    @bikes.push(bike)
    "Dock successful"
  end

end
