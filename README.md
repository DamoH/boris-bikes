# Makers wk.1 - pairing on Boris Bikes

irb>

require './lib/docking_station.rb'
station = DockingStation.new(50)
bike = Bike.new
21.times { station.dock bike }
