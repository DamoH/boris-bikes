require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'doesnt release working bikes when none' do
    expect{subject.release_bike}.to raise_error("No bike available")
  end

  # it 'releases working bikes' do
  #   bike = Bike.new
  #   subject.dock(bike)
  #   expect(subject.release_bike).to be_working
  # end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq ("Dock successful")
  end

  it "tests whether or not a bike is broken" do
    bike = Bike.new
    expect(subject.working_broken).to eq (bike.broken?)
  end

  it 'has docked working bikes' do
    bike = Bike.new
    expect(subject.working_bikes)
  end

  it 'has docked broken bikes' do
    bike = Bike.new
    expect(subject.broken_bikes)
  end

  it 'doesnt allow docking if full' do
    bike = Bike.new
    subject.capacity.times { subject.dock(bike) }
    expect{subject.dock(bike)}.to raise_error("Docking Station Full")
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

end
