require './lib/docking_station.rb'
Bike = Class.new
describe Bike do
  it { @bike.respond_to?('working?') }
end
