require './lib/docking_station.rb'

describe DockingStation do
  it { subject.respond_to? :release_bike}
  it { expect(subject.release_bike).to be_a Bike}
  it { expect(subject.release_bike.working?).to eq true}
end
