# Makers wk.1 - pairing on Boris Bikes

irb>

require './lib/docking_station.rb'
station = DockingStation.new
bike = Bike.new
station.dock(bike)
bike = station.release_bike
bike.working?
