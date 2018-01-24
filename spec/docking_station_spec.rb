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

  it "sees if a bike is docked" do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station.bikes).to be_empty
  end

  describe "#has_bikes?" do
    docking_station = DockingStation.new
    it "returns false if no bike present" do
      expect(docking_station).not_to have_bikes
    end
    bike = Bike.new
    docking_station.dock(bike)
    it "docking staion to include bikes" do
      expect(docking_station).to have_bikes
    end

  end

end
