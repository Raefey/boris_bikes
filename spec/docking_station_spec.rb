require './lib/docking_station.rb'
DockingStation = Class.new
describe DockingStation do
  it { @dockingStation.respond_to?('release_bike') }
end
