# Makers wk.1, day 2 - pairing on Boris Bikes

irb>

require './lib/docking_station.rb'
require './lib/bike.rb'
station = DockingStation.new
bike = Bike.new
station.dock(bike)
bike = station.release_bike
bike.working?