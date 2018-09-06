require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'doesnt release working bikes when none' do
    expect{subject.release_bike}.to raise_error("No bike available")
  end

  it 'releases working bikes' do
    bike = Bike.new
    subject.dock(bike, "No")
    expect(subject.release_bike).to be_working
  end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike, "No")).to eq ("Dock successful")
  end

  it 'has docked bikes' do
    bike = Bike.new
    expect(subject.bikes)
  end

  it 'doesnt allow docking if full' do
    bike = Bike.new
    subject.capacity.times { subject.dock(bike, "No") }
    expect{subject.dock(bike, "No")}.to raise_error("Docking Station Full")
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it 'allows users to tell it if a bike it broken' do
    bike = Bike.new
    expect(subject.dock(bike, "Yes")).to eq ("Thanks, I've made a note")
  end

end
