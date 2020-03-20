require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  #TEST: The docking station gets a bike and expects bike to be working
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  #TEST: test for docking a bike at a docking station.
  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:has_bike?) }

  it 'tells us there is a bike when there is a bike' do
    docking_station = DockingStation.new
    docking_station.dock(Bike.new)
    expect(docking_station.has_bike?).to eq true
  end

  it 'tells us there is no bike when there is no bike' do
    docking_station = DockingStation.new
    expect(docking_station.has_bike?).to eq false
  end
end
