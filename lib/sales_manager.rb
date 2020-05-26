class SalesManager
  attr_reader :name,
              :id,
              :base_salary,
              :estimated_annual_sales

  def initialize(name, id, base_salary, estimated_annual_sales)
    @name = name
    @id = id
    @base_salary = base_salary
    @estimated_annual_sales = estimated_annual_sales
  end

  def bonus
    0.10 * @estimated_annual_sales
  end

  def total_compensation
    base_salary + bonus
  end

  def benefits
    ['PTO', 'parental leave']
  end
end
