require './lib/docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it { expect(subject.release_bike(1)).to be_a Bike}
  it { expect(subject.release_bike(1).working?).to eq true}

  it { is_expected.to respond_to(:dock).with(1).argument }
  it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike(0) }.to raise_error('There are no bikes')
    end
  end
end
