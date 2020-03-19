require 'docking_station'

describe DockingStation do

# TEST: Release a bike
  it { is_expected.to respond_to :release_bike}

  #TEST: The docking station gets a bike and expects bike to be working
  it 'releases working bikes' do 
    bike = subject.release_bike
    expect(bike).to be_working
  end

end
