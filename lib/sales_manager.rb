require_relative './employee'

class SalesManager < Employee
  attr_reader :base_salary,
              :estimated_annual_sales

  def initialize(name, id, base_salary, estimated_annual_sales)
    super(name, id)
    @base_salary = base_salary
    @estimated_annual_sales = estimated_annual_sales
  end

  def bonus
    0.10 * @estimated_annual_sales
  end
end
