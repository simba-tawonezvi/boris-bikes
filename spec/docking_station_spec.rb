require "dockingStation"
describe DockingStation do
  describe "respond to" do
  it {is_expected.to respond_to :release_bike}
  end 
  it 'releases working bikes' do
    bike = self.release_bike 
    expect(bike).to be_working
  end
end 