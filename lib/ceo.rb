require_relative './employee'

class Ceo < Employee
  attr_reader :base_salary,
              :bonus

  def initialize(name, id, base_salary, bonus)
    @base_salary = base_salary
    @bonus = bonus
    super(name, id)
    @benefits << 'health insurance'
  end

  # def benefits
  #   binding.pry
  #   super << 'health insurance'
  # end
end
