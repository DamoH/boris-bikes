require_relative './bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail("No bike available") if empty?
    @bikes.pop
  end

  def dock(bike, broken)
    fail("Docking Station Full") if full?
    if broken == "No"
      @bikes.push(bike)
      "Dock successful"
    else
      @bikes.push(bike)
      "Thanks, I've made a note"
    end
  end

  private

  def full?
    @bikes.length >= @capacity ? true : false
  end

  def empty?
    @bikes.length == 0 ? true : false
  end

end
