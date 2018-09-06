require_relative './bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :working_bikes, :broken_bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @working_bikes = []
    @broken_bikes = []
    @capacity = capacity
  end

  def release_bike
    fail("No bike available") if empty?
    @working_bikes.pop
  end

  def dock(bike)
    fail("Docking Station Full") if full?
    @working_bikes.push(bike)
    "Dock successful"
  end

  def working_broken(bike)
    bike.broken?
  end

  private

  def full?
    @working_bikes.length >= @capacity ? true : false
  end

  def empty?
    @working_bikes.length == 0 ? true : false
  end

end
