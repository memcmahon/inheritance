class Employee
  attr_reader :name,
              :id,
              :benefits

  def initialize(name, id)
    @name = name
    @id = id
    @benefits = ['PTO', 'parental leave']

  end

  def total_compensation
    base_salary + bonus
  end

  def base_salary
    raise NotImplementedError
  end

  def bonus
    raise NotImplementedError
  end

  # def benefits
  #   ['PTO', 'parental leave']
  # end
end
