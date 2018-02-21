require './lib/docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it { expect(subject.release_bike).to be_a Bike}
  it { expect(subject.release_bike.working?).to eq true}

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
