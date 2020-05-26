class Intern
  attr_reader :name,
              :id,
              :hourly_rate

  def initialize(name, id, hourly_rate)
    @name = name
    @id = id
    @hourly_rate = hourly_rate
  end

  def total_compensation
    hourly_rate * 2000
  end

  def benefits
    ['PTO', 'parental leave']
  end
end
