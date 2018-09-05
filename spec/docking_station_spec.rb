require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'doesnt release working bikes when none' do
    expect{subject.release_bike}.to raise_error("No bike available")
  end

  it 'releases working bikes' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq (bike)
  end

  it 'has docked bikes' do
    bike = Bike.new
    expect(subject.bike)
  end
end
