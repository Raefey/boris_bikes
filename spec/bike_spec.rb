require './lib/bike.rb'
describe Bike do
  it { subject.respond_to?('working?') }
end
