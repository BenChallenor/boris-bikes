require "docking_station"
describe DockingStation do

  it "returns DockingStation to respond to the method release_bike" do
  expect(subject).to respond_to(:release_bike)
  end

  it "releases working bike" do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to be_working
  end

  it "docks a bike" do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station.dock(bike)).to include bike
  end
  
end
