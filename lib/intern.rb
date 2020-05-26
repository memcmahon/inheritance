require_relative './employee'

class Intern < Employee
  attr_reader :hourly_rate

  def initialize(name, id, hourly_rate)
    super(name, id)
    @hourly_rate = hourly_rate
  end

  def total_compensation
    hourly_rate * 2000
  end
end
