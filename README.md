# Makers wk.1, day 2 - pairing on Boris Bikes

irb>

require './lib/docking_station.rb'
station = DockingStation.new
bike = station.release_bike
bike.working?
station.dock(bike)
