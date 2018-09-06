require_relative './bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail("No bike available") if empty?
    @bikes.pop
  end

  def dock(bike)
    fail("Docking Station Full") if full?
    @bikes.push(bike)
    "Dock successful"
  end

  private

  def full?
    @bikes.length >= DEFAULT_CAPACITY ? true : false
  end

  def empty?
    @bikes.length == 0 ? true : false
  end

end
