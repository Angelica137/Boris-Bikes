
class Bike
  attr_reader :working
  def initialize
    @working = true
  end
  def working?
    working
  end
end

class DockingStation
  def release_bike
    bike.working?
    p bike
  end
end
