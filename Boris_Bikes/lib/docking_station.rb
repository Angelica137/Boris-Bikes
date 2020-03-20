require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise 'There are no bikes'
    end
    Bike.new
  end

  def dock(bike)
    @bikes << bike
  end

  def has_bike?
    @bikes.empty? ? false : true
  end
end
